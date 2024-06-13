import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/styles.dart';

class StartStudyingWidget extends StatelessWidget {
  final List<String> imageLinks;
  final List<String> subjectNames;

  const StartStudyingWidget({
    Key? key,
    required this.imageLinks,
    required this.subjectNames,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                S.of(context).start_studying,
                style: TextStyles.size20FontWidget700Black,
              ),
              const SizedBox(width: 5,),
              Text(
               S.of(context).select_the_class,
                style: TextStyles.size16FontWidget400gray,
              ),
            ],
          ),
          Divider(
            color: AppColors.lightBlue,
            indent: 5,
            endIndent: 300,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: imageLinks.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                        width: 100,
                        height: 100,
                        imageLinks[index]),
                    const SizedBox(height: 10,),
                    Text(subjectNames[index], style: TextStyles.size20FontWidget700Black,)
                  ],
                ),
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1.4 / 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
