import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/models/study_model/study_model.dart';
import '../../../../models/home_model/home_model.dart';
import '../../../../service_api/servise_api.dart';
import 'study_state.dart';

class StudyCubit extends Cubit<StudyState> {
  final ServiceApi dioService;

  StudyCubit(this.dioService) : super(InitState());

  late StudyModel studyData;

  void getStudyData() async {
    emit(LoadingState());
    final result = await dioService.getStudyData();
    result.fold(
          (failure) => emit(ErrorState('Error loaded  data: $failure')),
          (studyModel) {
            studyData = studyModel;
        emit(LoadedState());
      },
    );
  }
}
