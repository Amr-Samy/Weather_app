abstract class HomeStates{}

class HomeInitialState extends HomeStates {}

class ExpandState extends HomeStates{}
class changeTimeState extends HomeStates{}

class LoadingState extends HomeStates{}
class SuccessState extends HomeStates{}
class ErrorState extends HomeStates{
  final String error ;
  ErrorState(this.error);
}

