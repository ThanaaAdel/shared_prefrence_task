import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../models/find_exam_by_id_model/find_exam_by_id_model.dart';
import '../../../../service_api/servise_api.dart';
import 'final_exam_by_id_state.dart';

class FinalExamByIdCubit extends Cubit<FinalExamByIdState> {
  final ServiceApi dioService;

  FinalExamByIdCubit(this.dioService) : super(InitState());

  late FinalExamByIdModel finalExamByIdData;

  void getFinalExamData({required int id}) async {
    emit(LoadingState());
    final result = await dioService.getFinalExamById(id);
    result.fold(
          (failure) => emit(ErrorState('Error loaded  data: $failure')),
          (getFinalExamModel) {
            finalExamByIdData = getFinalExamModel;
        emit(LoadedState());
      },
    );
  }
}
