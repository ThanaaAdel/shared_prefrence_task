


abstract class StudyState{}
class InitState extends StudyState {}
class LoadingState extends StudyState {}
class LoadedState extends StudyState {}
class ErrorState extends StudyState {
  final String message;
  ErrorState(this.message);
}