

import '../../../../models/home_model/home_model.dart';

abstract class HomeState{}
class InitState extends HomeState {}

class LoadingState extends HomeState {}
class LoadedState extends HomeState {}
class ErrorState extends HomeState {
  final String message;
  ErrorState(this.message);
}