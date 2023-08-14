
import 'package:e_commerce2/Application/Apis/apis.dart';
import 'package:e_commerce2/core/NetWorkService/diohelper.dart';

import '../Models/homeModel.dart';

class HomeRemoteDataSource{
  Future<HomeModel>getHomdata()async{
    try{
      final res=await  DioHelper.getData(url: Apis.product,);
      return HomeModel.fromJson(res.data);
    }catch(e){
      rethrow;
    }

  }
}