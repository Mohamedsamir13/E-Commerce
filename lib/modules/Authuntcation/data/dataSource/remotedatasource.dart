
import 'package:e_commerce2/Application/Apis/apis.dart';
import 'package:e_commerce2/core/NetWorkService/diohelper.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_req.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_res.dart';

class RemoteDataSource{
  Future <UserRes> register(UserReq user)async{
    try{
      final res =  await DioHelper.postData(
          url: Apis.register,
          data: user.toJson());
      return UserRes.fromJson(res.data);
    }
    catch(e){
      rethrow;
    }
  }
  Future <UserRes> login({required String email,required String password})async{
    try{
      final res =  await DioHelper.postData(
          url: Apis.login,
          data: {
            "email":email,
            "password":password,
          });
      return UserRes.fromJson(res.data);
    }
    catch(e){
      rethrow;
    }
  }

  Future <UserRes> updateProfile(UserReq user)async{
    try{
      final res =  await DioHelper.putData(
          url: Apis.updateprofile,
          data: user.toJson());
      return UserRes.fromJson(res.data);
    }
    catch(e){
      rethrow;
    }
  }
}