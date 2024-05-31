abstract class LoginState{}
class InitState extends LoginState {}
class LoadingState extends LoginState{}
class LoadedState extends LoginState{}
class ErrorState extends LoginState {
  final String message;

  ErrorState(this.message);
}