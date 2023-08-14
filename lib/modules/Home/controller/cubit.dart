import 'package:e_commerce2/modules/Home/RepositryHome/repositry.dart';
import 'package:e_commerce2/modules/Home/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(HomeInitState());
  static HomeCubit i(BuildContext context) => BlocProvider.of(context);
  int currentIndex=0;

  final HomeRepositry _homeRepositry=HomeRepositry();


void getHomeData(){
  try{
    _homeRepositry.getHomdata();
  }catch(e){
    rethrow;
  }
}
  void ChangeIndex(int newIndex){
    currentIndex=newIndex;
    emit(ChangeIndexState());
  }



}