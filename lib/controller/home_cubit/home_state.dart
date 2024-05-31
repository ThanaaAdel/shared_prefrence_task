import '../../models/login_request_model.dart';

abstract class HomeState{}
class InitState extends HomeState {}

class LoadingState extends HomeState {}
class LoadedState extends HomeState {
  final LoginRequestModel user;

  LoadedState(this.user);
}
class ErrorState extends HomeState {
  final String message;

  ErrorState(this.message);
}