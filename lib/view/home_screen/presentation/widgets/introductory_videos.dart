import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_manager.dart';
import '../../../../utils/styles.dart';

class IntroductoryVideos extends StatefulWidget {
  const IntroductoryVideos({
    Key? key,
    required this.videoUrl,
    required this.videoBackgroundColors, required this.videoTitle, required this.videoTime,
  }) : super(key: key);

  final List<String> videoUrl;
  final List<String> videoBackgroundColors;
  final List<String> videoTitle;
  final List<String> videoTime;

  @override
  _FinalReviewWidgetState createState() => _FinalReviewWidgetState();
}

class _FinalReviewWidgetState extends State<IntroductoryVideos> {
  late PodPlayerController _controller;

  @override
  void initState() {
    _controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
        "https://youtu.be/zFSyuaGqTk0",
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).introductory_videos,
            style: TextStyles.size20FontWidget700Black,
          ),
          Divider(
            color: AppColors.lightBlue,
            indent: 5,
            endIndent: 250,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: widget.videoBackgroundColors.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () async {
                      _openVideo(widget.videoUrl[index]); // Open the video at the current index
                    },
                    child: Container(
                      width: 180,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(int.parse(widget.videoBackgroundColors[index].replaceAll('#', '0xFF'))),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              crossAxisAlignment:CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                Text(
                                    maxLines: 2,
                                    widget.videoTitle[index],style: TextStyles.size18FontWidget700White.copyWith(fontSize: 10)),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(ImageAssets.clockIcon,width: 15, height: 15),
                                const SizedBox(width: 10),
                                Text(
                                  widget.videoTime[index],
                                  style: TextStyles.size18FontWidget700White.copyWith(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _openVideo(String videoUrl) async {
    if (await canLaunch(videoUrl)) {
      await launch(videoUrl);
    } else {
      throw 'Could not launch $videoUrl';
    }
  }
}
