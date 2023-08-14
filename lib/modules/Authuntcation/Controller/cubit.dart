
import 'package:e_commerce2/modules/Authuntcation/Controller/states.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_req.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_res.dart';
import 'package:e_commerce2/modules/Authuntcation/data/repositry/repositry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitialState());

  static AuthCubit i(BuildContext context) => BlocProvider.of(context);

  final Repository repository = Repository();
  UserRes? userData;
  String? email;
  String? password;
  String? name;
  Future<void> register({required UserReq user}) async {
    emit(RegisterLoadingState());
    try {
      userData = await repository.register(user);
      emit(RegisterLoadedState());
    } catch (e) {
      emit(RegisterfailedState());
      rethrow;
    }
  }

  Future<void> updateProfile(UserReq user) async {
    emit(UpdateFailedState());
    try {
      userData = await repository.updateProfile(user);
      emit(UpdateLoadedState());
    } catch (e) {
      emit(UpdateFailedState());
      rethrow;
    }
  }

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoadingState());
    try {
      userData = await repository.login(email: email, password: password);
      print(userData?.message);
      emit(LoginLoadedState());
    } catch (e) {
      emit(LoginfailedState());
      rethrow;
    }
  }
}

