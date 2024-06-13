import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../models/home_model/home_model.dart';
import '../../../../service_api/servise_api.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final ServiceApi dioService;

  HomeCubit(this.dioService) : super(InitState());

  late HomeModel homeData;

  void getHomeInfo() async {
    emit(LoadingState());
    final result = await dioService.getHomeInfo();
    result.fold(
          (failure) => emit(ErrorState('Error loading  data: $failure')),
          (homeModel) {
        homeData = homeModel;
        emit(LoadedState());
      },
    );
  }
}
