import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/modules/home/home_cubit.dart';
import 'package:weather_app/shared/components/bloc_observer.dart';
import 'modules/home/demo.dart';
import 'modules/home/home_screen.dart';
import 'network/dio/dio_helper.dart';
import 'network/local/cashe_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  DioHelper.init();
  Widget widget = MyHomePage();

  runApp( MyApp(widget));
}

class MyApp extends StatelessWidget {
  Widget? widget;
  MyApp(this.widget);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context)=> HomeCubit()..getWeather()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: widget,
      ),
    );
  }
}
