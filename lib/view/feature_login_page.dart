
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/controller/login_cubit/login_cubit.dart';
import 'package:shared_prefrence_task/view/widgets/all_text_field.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => LoginCubit(),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AllTextFieldsWidget(),

          ]),
        ),
      ),
    );
  }
}
