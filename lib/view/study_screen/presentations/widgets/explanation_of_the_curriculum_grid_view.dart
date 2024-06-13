import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../widgets/show_loading_indicator.dart';
import '../../manager/study_cubit/study_cubit.dart';
import '../../manager/study_cubit/study_state.dart';
import 'explanation_of_the_curriculum_widget.dart';

class ExplanationOfTheCurriculumGridView extends StatelessWidget {
  const ExplanationOfTheCurriculumGridView({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudyCubit, StudyState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const ShowLoadingIndicator();
        } else if (state is LoadedState) {
          var cubit = context.read<StudyCubit>();
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: cubit.studyData.data!.length,
            itemBuilder: (context, index) {
              return ExplanationOfTheCurriculumWidget(
                status: cubit.studyData.data![index].status.toString(),
                totalWatch: cubit.studyData.data![index].totalWatch,
                totalTime:  cubit.studyData.data![index].totalTimes.toString(),
                time:  cubit.studyData.data![index].totalTimes.toString(),
                numberOfLessons:  cubit.studyData.data![index].numOfLessons!,
                numberOfVideos:  cubit.studyData.data![index].numOfVideos!,
                name: cubit.studyData.data![index].name.toString(),
                title: cubit.studyData.data![index].title.toString(),
                imageUrl: cubit.studyData.data![index].image.toString(),
                colorWidget: cubit.studyData.data![index].backgroundColor.toString(),
              );
            },
          );
        } else {
          return const Center(
            child: Text("Error"),
          );
        }
      },
    );
  }
}
