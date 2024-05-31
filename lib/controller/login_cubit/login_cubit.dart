import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../models/login_request_model.dart';
import '../../prefrences/prefrences.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitState()) {
    _init();
  }

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  Preferences? prefs;

  void _init() async {
    prefs = Preferences();
  }

  Future<void> setUser() async {
    String name = nameController.text;
    String birthDate = birthDateController.text;
    String birthDateFormat = 'dd/MM/yyyy';

    try {
      DateTime parsedBirthDate = DateFormat(birthDateFormat).parseStrict(birthDate);
      if (prefs != null) {
        prefs!.setUser(LoginRequestModel(name, parsedBirthDate));
      } else {
        throw Exception('Preferences is null');
      }
    } catch (e) {
      throw Exception('Error setting user data: $e');
    }
  }

  // Method to format birth date as "31-05-2024"
  String formatBirthDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }
}
