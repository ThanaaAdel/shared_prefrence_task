import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart'; // Import the intl package
import '../controller/home_cubit/home_cubit.dart';
import '../controller/home_cubit/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            } else if (state is LoadedState) {
              final user = state.user;
              String formattedBirthDate = DateFormat('dd-MM-yyyy').format(user.birthDate!); // Format the birth date
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Name: ${user.name}', style: const TextStyle(fontSize: 20)),
                    const SizedBox(height: 20,),
                    Text('Birth Date: $formattedBirthDate', style: const TextStyle(fontSize: 20)), // Display formatted birth date
                    // Display other user data as needed
                  ],
                ),
              );
            } else if (state is ErrorState) {
              return Text('Error: ${state.message}');
            } else {
              return const Text('Unknown State');
            }
          },
        ),
      ),
    );
  }
}
