import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_manager.dart';
import '../../../../utils/styles.dart';
class LiveWidget extends StatelessWidget {
  const LiveWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColors.liveExamColor),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(S.of(context).live_exam,style: TextStyles.size18FontWidget700orange,),
                const SizedBox(height: 10,),
                Text(S.of(context).text_from_live_exam,style: TextStyles.size16FontWidget400gray.copyWith(fontSize: 13),),

              ],),
            Image.asset(
                height: 50,
                width: 50,
                ImageAssets.liveImage),

          ]),);
  }
}