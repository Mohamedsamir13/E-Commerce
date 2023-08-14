


import 'package:e_commerce2/modules/Home/data/Datasource/homeRemoteDataSource.dart';
import 'package:e_commerce2/modules/Home/data/Models/homeModel.dart';

class HomeRepositry{
  final HomeRemoteDataSource _remoteDataSource=HomeRemoteDataSource();
  Future<HomeModel>getHomdata()async{
    try{
      return _remoteDataSource.getHomdata();
    }catch(e){
      rethrow;
    }
  }
}