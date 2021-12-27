abstract class HomeStates{}

class HomeInitialState extends HomeStates {}

class ExpandState extends HomeStates{}

class changeTimeState extends HomeStates{}
class ChangeBackgroundState extends HomeStates{}

class LoadingState extends HomeStates{}
class SuccessState extends HomeStates{}
class ErrorState extends HomeStates{
  final String error ;
  ErrorState(this.error);
}

// days forecast
class WeatherDaysForecastLoadingState extends HomeStates{}
class WeatherDaysForecastSuccessState extends HomeStates{}
class WeatherDaysForecastErrorState extends HomeStates{
  final String error ;
  WeatherDaysForecastErrorState(this.error);
}
