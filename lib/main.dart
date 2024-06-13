import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pod_player/pod_player.dart';
import 'package:shared_prefrence_task/generated/l10n.dart';
import 'package:shared_prefrence_task/service_api/servise_api.dart';
import 'package:shared_prefrence_task/view/home_screen/manager/home_cubit/home_cubit.dart';
import 'package:shared_prefrence_task/view/home_screen/presentation/widgets/bottom_nav_widget.dart';
import 'package:shared_prefrence_task/view/login_screen/data/phone_auth_cubit/phone_auth_cubit.dart';
import 'package:shared_prefrence_task/view/study_screen/manager/final_exam_by_id_cubit/final_exam_by_id_cubit.dart';
import 'package:shared_prefrence_task/view/study_screen/manager/study_cubit/study_cubit.dart';
import 'firebase_options.dart';

void main() async{
  PodVideoPlayer.enableLogs = true;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MaterialApp(
    locale: const Locale('ar'),
    localizationsDelegates: const [
      S.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: S.delegate.supportedLocales,
    home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PhoneAuthCubit(),),
          BlocProvider(   create: (context) => HomeCubit(ServiceApi(Dio())),),
          BlocProvider(create: (context) => StudyCubit(ServiceApi(Dio())),),
          BlocProvider(create: (context) => FinalExamByIdCubit(ServiceApi(Dio())),)
        ],child: const BottomNavWidget()),
  ));
}
