import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
class StartTheJourney extends StatelessWidget {
  const StartTheJourney ({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 50,
      width: 380,
      child: Stack(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          Positioned(
            width: 95,
            child: Column(
              children: [
                Text(
                  S.of(context).start_the_journey,
                  style: TextStyle(
                    color: AppColors.black, // Set text color
                    fontSize: 20, // Set font size
                    fontWeight: FontWeight.bold, // Set font weight
                  ),
                ),
                Divider(color: AppColors.blue,endIndent: 60,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
