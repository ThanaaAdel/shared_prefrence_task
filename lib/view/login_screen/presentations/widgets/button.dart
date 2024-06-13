import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key, this.funButton,
  });
final void Function()? funButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              backgroundColor: AppColors.primary,

            ),
            onPressed: funButton,
            child: const Text(
              'Login',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}