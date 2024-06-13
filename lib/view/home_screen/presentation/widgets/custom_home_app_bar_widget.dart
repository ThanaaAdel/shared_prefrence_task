import 'package:flutter/material.dart';
import 'package:shared_prefrence_task/utils/helper.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_manager.dart';
class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key, required this.tapHandlerNotification});
  final Function tapHandlerNotification;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(context.screenWidth*0.03),
              child: const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  ImageAssets.personImage,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).student_name,
                  style: TextStyle(fontSize:context.screenWidth*0.033,color: AppColors.white),
                ),
                SizedBox(width:context.screenWidth*0.03),
                Text(
                  S.of(context).student_class,
                  style: TextStyle(fontSize:context.screenWidth*0.033,color: AppColors.white),
                ),
                SizedBox(width:context.screenWidth*0.03),
                Text(
                  S.of(context).Student_Term,
                  style: TextStyle(fontSize:context.screenWidth*0.033,color: AppColors.white),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: GestureDetector(
            onTap: () {
            },
            child: Image.asset(
              height:context.screenHeight*0.05,
              width:context.screenWidth*0.05,
              ImageAssets.notificationImage,
            ),),
        ),
      ]),
    );

  }
}
