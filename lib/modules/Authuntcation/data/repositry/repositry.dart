import 'package:e_commerce2/modules/Authuntcation/data/Models/user_req.dart';
import 'package:e_commerce2/modules/Authuntcation/data/Models/user_res.dart';
import 'package:e_commerce2/modules/Authuntcation/data/dataSource/remotedatasource.dart';


class Repository{

  RemoteDataSource remoteDataSource = RemoteDataSource();
  Future<UserRes> register(UserReq user)async{
    try{
      return await remoteDataSource.register(user);
    }catch(e){
      rethrow;
    }
  }

  Future<UserRes> login({required String email,required String password})async{
    try{
      return await remoteDataSource.login(email: email,password:password );
    }catch(e){
      rethrow;
    }
  }

  Future<UserRes> updateProfile(UserReq user)async{
    try{
      return await remoteDataSource.updateProfile(user);
    }catch(e){
      rethrow;
    }
  }
}