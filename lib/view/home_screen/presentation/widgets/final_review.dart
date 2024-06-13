import 'package:flutter/material.dart';
import 'package:pod_player/pod_player.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/assets_manager.dart';
import '../../../../utils/styles.dart';

class FinalReviewWidget extends StatefulWidget {
  const FinalReviewWidget({
    Key? key,
    required this.videoUrl,
    required this.videoImage,
    required this.videoTime,
  }) : super(key: key);

  final List<String> videoUrl;
  final List<String> videoImage;
  final List<String> videoTime;

  @override
  _FinalReviewWidgetState createState() => _FinalReviewWidgetState();
}

class _FinalReviewWidgetState extends State<FinalReviewWidget> {
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
    if (widget.videoImage.isEmpty) {
      return SizedBox.shrink(); // If videoImage list is empty, return an empty SizedBox
    }

    return SizedBox(
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            S.of(context).final_review,
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
              itemCount: widget.videoImage.length,
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
                        image: DecorationImage(
                          image: NetworkImage(
                              widget.videoImage[index]), // Load image from URL
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Icon(Icons.play_arrow,
                                    color: Colors.white), // Play icon
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              children: [
                                Image.asset(ImageAssets.clockIcon),
                                const SizedBox(width: 10),
                                Text(
                                  widget.videoTime[index],
                                  style: TextStyles.size18FontWidget700White
                                      .copyWith(fontSize: 17),
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
