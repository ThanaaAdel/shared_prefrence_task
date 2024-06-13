


abstract class FinalExamByIdState{}
class InitState extends FinalExamByIdState {}
class LoadingState extends FinalExamByIdState {}
class LoadedState extends FinalExamByIdState {}
class ErrorState extends FinalExamByIdState {
  final String message;
  ErrorState(this.message);
}