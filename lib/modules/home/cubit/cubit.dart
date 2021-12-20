import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/shared/mapper/mapper.dart';
import '../../../models/response/response.dart';
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
  WeatherNewModel? weatherNewModel;

  void getWeather(){
    emit(LoadingState());
    DioHelper.getData(url: WEATHER,query: {
      "q" : "Alexandria,EG",
      "APPID" :"e10e42fb9196d4ab0b93f87d76015ea8" ,
      "units" : "metric",
    }).then((value) {
      weatherModel = WeatherModel.fromJson(value.data);
      weatherNewModel = WeatherResponse.fromJson(value.data).toDomain();
      print("========================");
      print(weatherNewModel?.name);
      print("========================");
      emit(SuccessState());
    }).catchError((error){
      print(error.toString());
      emit(ErrorState(error.toString()));
    });
  }

  void expand(){
    expanded = !expanded;
    emit(ExpandState());
  }
  String timeNow = DateFormat('EE, dd MMMM hh:mm a	').format(DateTime.now());
  void time() async{
    getTime().listen((value) {
      timeNow = DateFormat('EE, dd MMMM hh:mm a	').format(DateTime.now());

    });

  }
  Stream<DateTime> getTime() async* {
    DateTime currentTime = DateTime.now();
    while (true) {
      await Future.delayed(Duration(minutes: 1));
      yield currentTime;
      emit(changeTimeState());
    }

  }

}