import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_prefrence_task/utils/app_colors.dart';
import '../../../../generated/l10n.dart';
import 'explanation_of_the_curriculum_grid_view.dart';
import 'final_exam_grid_view.dart';
class TabViewWidget extends StatelessWidget {
  const TabViewWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.9,
      child: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            ButtonsTabBar(
              radius: 50,
              height: 50,
              contentPadding: const EdgeInsets.only(left: 20,right: 20,bottom: 5,top: 5),
              backgroundColor: AppColors.orange,
              unselectedBackgroundColor: AppColors.gray,
              unselectedLabelStyle: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),
              labelStyle:
               TextStyle(color: AppColors.white, fontWeight: FontWeight.bold,fontSize: 18),
              tabs:  [
                Tab(
                  text:S.of(context).explanation_of_the_curriculum,
                ),
                Tab(
                  text: S.of(context).class_exams,
                ),
                Tab(text: S.of(context).final_review),

              ],
            ),
              const Expanded(
              child: TabBarView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ExplanationOfTheCurriculumGridView(),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  FinalExamGridView()

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}


