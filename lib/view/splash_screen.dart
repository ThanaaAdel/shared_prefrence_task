
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_prefrence_task/utils/app_colors.dart';
import 'package:shared_prefrence_task/view/home_screen/presentation/screens/home_screen.dart';
import 'package:shared_prefrence_task/view/login_screen/data/phone_auth_cubit/phone_auth_cubit.dart';
import 'package:shared_prefrence_task/view/login_screen/presentations/screens/login_screen.dart';

import '../service_api/servise_api.dart';
import 'home_screen/manager/home_cubit/home_cubit.dart';
import 'on_boarding_screen/on_boarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late Timer _timer;
  _goNext() {
    _getStoreUser();
  }

  _startDelay() async {
    _timer = Timer(
      const Duration(seconds: 3, milliseconds: 300),
          () {
        _goNext();
      },
    );
  }
  Future<void> _getStoreUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getInt('onBoard') != null) {
      // if (prefs.getString('user') != null) {
      //   Navigator.pushReplacement(context,
      //       MaterialPageRoute(builder: (context) =>
      //       BlocProvider(
      //           create: (context) => HomeCubit(ServiceApi(Dio())),
      //           child:  HomeScreen()),));
      // } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>
            BlocProvider
              (
                create: (context) => PhoneAuthCubit(),
                child: LoginScreen()),));
      //}
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>
          OnBoard(),));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Image.asset("assets/images/logo.png"),
        ]),
      ),
    );
  }
}
