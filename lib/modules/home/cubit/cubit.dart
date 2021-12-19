import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/network/dio/dio_helper.dart';
import 'package:weather_app/network/dio/end_points.dart';
import 'states.dart';


class HomeCubit extends Cubit<HomeStates>{

  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
  bool expanded = false;
  AnimationController? controller;
  WeatherModel? weatherModel;

  void getWeather(){
    emit(LoadingState());

    DioHelper.getData(url: FORECAST,query: {
      "q" : "Alexandria,EG",
      "APPID" :"e10e42fb9196d4ab0b93f87d76015ea8" ,
      "units" : "metric",
    }).then((value) {
      print(value.data);
      weatherModel = WeatherModel.fromJson(value.data);
      emit(SuccessState());
      print("========================================");
      // print(weatherModel!.id);

    }).catchError((error){
      print(error.toString());
      emit(ErrorState(error.toString()));
    });

  }

  void expand(){
    expanded = !expanded;
    emit(ExpandState());
  }


}