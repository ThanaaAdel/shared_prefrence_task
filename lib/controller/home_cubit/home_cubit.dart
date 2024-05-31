import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/login_request_model.dart';
import '../../prefrences/prefrences.dart';
import 'home_state.dart';
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitState()) {
    _init();
  }
  Preferences? prefs;
  void _init() async {
    prefs = Preferences();
    emit(LoadingState());
    try {
      final user = await getUserData();
      emit(LoadedState(user));
    } catch (e) {
      emit(ErrorState('Error loading user data: $e'));
    }
  }

  Future<LoginRequestModel> getUserData() async {
    try {
      if (prefs != null) {
        final user = await prefs!.getUserModel();
        return user;
      } else {
        throw Exception('Preferences is null');
      }
    } catch (e) {
      throw Exception('Error getting user data: $e');
    }
  }
}
