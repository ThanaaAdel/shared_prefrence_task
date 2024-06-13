import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/view/study_screen/manager/study_cubit/study_cubit.dart';
import 'package:shared_prefrence_task/view/study_screen/presentations/widgets/start_the_journey_widget.dart';
import '../../../home_screen/presentation/widgets/custom_home_app_bar_widget.dart';
import '../widgets/tab_view_widget.dart';
class StudyScreen extends StatefulWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  @override
  void initState() {
    context.read<StudyCubit>().getStudyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomHomeAppBar(
              tapHandlerNotification: () {},
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                const StartTheJourney(),
                TabViewWidget(
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

