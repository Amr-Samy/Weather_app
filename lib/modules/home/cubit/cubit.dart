import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/models/weather_days_forecast.dart';
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
  WeatherDaysForecast? weatherDaysForecastModel;

  void getWeather(){
    emit(LoadingState());
    DioHelper.getData(url: WEATHER,query: {
      "q" : "Alexandria,EG",
      "APPID" :"e10e42fb9196d4ab0b93f87d76015ea8" ,
      "units" : "metric",
    }).then((value) {
      weatherModel = WeatherModel.fromJson(value.data);
      weatherNewModel = WeatherResponse.fromJson(value.data).toDomain();
      background(sunrise: weatherModel!.sys.sunriseWithoutFormat,sunset:weatherModel!.sys.sunsetWithoutFormat );
      emit(SuccessState());
    }).catchError((error){
      print(error.toString());
      emit(ErrorState(error.toString()));
    });
  }

  void expand(){
    expanded = !expanded;    emit(ExpandState());
  }



  // start Dates formatted
  String timeNow = DateFormat('EE, dd MMMM hh:mm a	').format(DateTime.now());
  void time() async{
    getTime().listen((value) {
      timeNow = DateFormat('EE, dd MMMM hh:mm a	').format(DateTime.now());
    });
  }
  //  Date now stram
  Stream<DateTime> getTime() async* {
    while (true) {
      await Future.delayed(Duration(minutes: 1));
      yield DateTime.now();
      emit(changeTimeState());
    }
  }
  // End Dates formatted

  List<ListData> myListForecast =[];

  // start Weather days forecast
  void getWeatherDaysForecast(int hoursCount, {String type = "day"}){
    emit(WeatherDaysForecastLoadingState());
    DioHelper.getData(url: FORECAST,query: {
      "q" : "Alexandria,EG",
      "APPID" :"e10e42fb9196d4ab0b93f87d76015ea8" ,
      "units" : "metric",
    }).then((value) {
      // data
      weatherDaysForecastModel = WeatherDaysForecast.fromJson(value.data);

      // print(weatherDaysForecastModel!.list!.length);

      // hours per day
      double hours = getHoursOfDay(hoursCount,type: "hours");

      for(int i = 0;i <= weatherDaysForecastModel!.list!.length;i++)
      {
        // get if type day
        if(type == "day"){
          if(i < hours)
          {
            myListForecast.add(weatherDaysForecastModel!.list![i]);
          }
        }else{
          // get if type hours
          if(i < hours)
          {
            myListForecast.add(weatherDaysForecastModel!.list![i]);
          }
        }
      }
      print(myListForecast.length);
      emit(WeatherDaysForecastSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(WeatherDaysForecastErrorState(error.toString()));
    });
  }

  double getHoursOfDay(int dayOrHoursCount, {String type = "day"})
  {
    if(type == "day")
    {
      // 8 is total hours per 3 hour per day forecast
      return (dayOrHoursCount * 8);
    }else{
      return (dayOrHoursCount/3);
    }

  }
  // End Weather days forecast


  String BgAssetPath = "assets/images/bg/night1.png";

  // start Get Background check
  void background({DateTime? sunrise, DateTime? sunset}) async{
    getBackground().listen((value) {
      DateTime dt = value;
      DateTime sunrise_plus_hour = sunrise!.add(const Duration(hours: 1));
      DateTime sunset_plus_hour = sunset!.add(const Duration(hours: 1));

      // positive value greater and negative value being less
      // first condition sunrise
      if(dt.compareTo(sunrise) > 0 && dt.compareTo(sunrise_plus_hour) < 0){
        BgAssetPath = "assets/images/bg/morning1.png";
      }
      // morning
      else if(dt.compareTo(sunrise_plus_hour) > 0 && dt.compareTo(sunset) < 0){
        BgAssetPath = "assets/images/bg/morning2.png";
      }
      // sunset time
      else if(dt.compareTo(sunset) > 0 && dt.compareTo(sunset_plus_hour) < 0){
        BgAssetPath = "assets/images/bg/night.png";
      }
      // night
      else if(dt.compareTo(sunset_plus_hour) > 0 && dt.compareTo(sunrise) < 0){
        BgAssetPath = "assets/images/bg/night1.png";
      }

    });
  }
  //  Background  stream
  Stream<DateTime> getBackground() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now();
      emit(ChangeBackgroundState());

    }
  }
// End Dates formatted
}