import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_prefrence_task/service_api/servise_api.dart';
import '../../../../utils/app_colors.dart';
import '../../../../widgets/show_loading_indicator.dart';
import '../../manager/home_cubit/home_cubit.dart';
import '../../manager/home_cubit/home_state.dart';
import '../widgets/custom_home_app_bar_widget.dart';
import '../widgets/final_review.dart';
import '../widgets/introductory_videos.dart';
import '../widgets/live_widget.dart';
import '../widgets/slider_widget.dart';
import '../widgets/start_studying_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<HomeCubit>().getHomeInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const ShowLoadingIndicator();
        } else if (state is LoadedState) {
          var cubit = context.read<HomeCubit>();
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomHomeAppBar(
                      tapHandlerNotification: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.03,
                          vertical: MediaQuery.of(context).size.height * 0.03),
                      child: Column(
                        children: [
                          SliderWidget(
                            imageFiles: cubit.homeData.data?.sliders
                                    ?.map((slider) => slider.file.toString())
                                    .toList() ??
                                [],
                          ),
                          const LiveWidget(),
                          const SizedBox(height: 10,),
                          IntroductoryVideos(
                            videoTime: cubit.homeData.data?.videosBasics
                                ?.map((videosBasics) =>
                                videosBasics.time.toString())
                                .toList() ??
                                [],
                            videoTitle: cubit.homeData.data?.videosBasics
                                    ?.map((videosBasics) =>
                                        videosBasics.name.toString())
                                    .toList() ??
                                [],
                            videoBackgroundColors: cubit
                                    .homeData.data?.videosBasics
                                    ?.map((videosBasics) =>
                                        videosBasics.backgroundColor.toString())
                                    .toList() ??
                                [],
                            videoUrl: cubit.homeData.data?.videosBasics
                                    ?.map((videosBasics) =>
                                        videosBasics.videoLink.toString())
                                    .toList() ??
                                [],
                          ),
                          StartStudyingWidget(
                              imageLinks: cubit.homeData.data?.classes
                                      ?.map(
                                          (classes) => classes.image.toString())
                                      .toList() ??
                                  [],
                              subjectNames: cubit.homeData.data?.classes
                                      ?.map(
                                          (classes) => classes.name.toString())
                                      .toList() ??
                                  []),
                          FinalReviewWidget(
                            videoTime: cubit.homeData.data?.videosResources
                                ?.map(
                                    (videos) => videos.time.toString())
                                ?.toList() ??
                                [],
                            videoUrl: cubit.homeData.data?.videosResources
                                    ?.map(
                                        (videos) => videos.pathFile.toString())
                                    ?.toList() ??
                                [],
                            videoImage: cubit.homeData.data?.videosResources
                                    ?.map((videos) => videos.image.toString())
                                    ?.toList() ??
                                [],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: Text("error"),
          );
        }
      },
    );
  }
}
