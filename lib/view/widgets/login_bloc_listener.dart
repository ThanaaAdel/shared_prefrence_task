import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/view/home_page.dart';
import '../../controller/login_cubit/login_cubit.dart';
import '../../controller/login_cubit/login_state.dart';

class LoginBlocListener extends StatefulWidget {
  const LoginBlocListener({Key? key}) : super(key: key);

  @override
  State<LoginBlocListener> createState() => _SignInBlocListenerState();
}

class _SignInBlocListenerState extends State<LoginBlocListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoadingState) {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          );
        } else if (state is LoadedState) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else if (state is ErrorState) {
          setupErrorState(context, state.message);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    Navigator.pop(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(
          error,
          style: const TextStyle(color: Colors.black, fontSize: 14),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Got It ',
                style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
        ],
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
      ),
    );
  }
}
