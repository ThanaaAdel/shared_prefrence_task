import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/view/home_page.dart';
import '../../controller/login_cubit/login_cubit.dart';
import 'login_bloc_listener.dart';

class AllTextFieldsWidget extends StatefulWidget {
  const AllTextFieldsWidget({Key? key}) : super(key: key);

  @override
  State<AllTextFieldsWidget> createState() => _AllTextFieldsWidgetState();
}

class _AllTextFieldsWidgetState extends State<AllTextFieldsWidget> {
  late TextEditingController _birthDateController;

  @override
  void initState() {
    super.initState();
    _birthDateController = context.read<LoginCubit>().birthDateController;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Full Name", style: TextStyle(fontSize: 16, color: Colors.black)),
                const SizedBox(height: 10),
                TextFormField(
                  maxLines: 1,
                  controller: context.read<LoginCubit>().nameController,
                  decoration: const InputDecoration(
                    hintText: "Enter Your NAme",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  ),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return 'Name cannot be empty';
                    }
                    return null; // Return null if the name is valid
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Birth Date", style:TextStyle(fontSize: 16,color: Colors.black)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        maxLines: 1,
                        controller: _birthDateController,
                        decoration: const InputDecoration(
                          hintText: 'DD/MM/YYYY',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        ),
                        validator: (date) {
                          // You can add validation logic for the birth date if needed
                          if (date!.isEmpty) {
                            return 'Birth date cannot be empty';
                          }
                          return null; // Return null if the date is valid
                        },
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Show date picker when the icon button is pressed
                        _selectDate(context);
                      },
                      icon: const Icon(Icons.calendar_today),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {
                  validateThenDoSignUp(context);
                },
                child: const Text("Login"),
              ),
            ),
            const LoginBlocListener(),
          ],
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().setUser();
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    } else {
      print("Validation failed. Please check the form fields.");
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      // Format the picked date to 'DD/MM/YYYY' format
      String formattedDate = '${pickedDate.day.toString().padLeft(2, '0')}/${pickedDate.month.toString().padLeft(2, '0')}/${pickedDate.year}';

      // Update the text in the birth date controller
      _birthDateController.text = formattedDate;
    }
  }
}
