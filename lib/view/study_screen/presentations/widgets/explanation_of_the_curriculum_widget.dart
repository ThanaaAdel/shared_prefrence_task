import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/styles.dart';
import 'flow_chart_widget.dart';

class ExplanationOfTheCurriculumWidget extends StatelessWidget {
  const ExplanationOfTheCurriculumWidget({
    Key? key,
    required this.colorWidget,
    required this.imageUrl,
    required this.name,
    required this.title,
    required this.time,
    required this.numberOfVideos,
    required this.numberOfLessons, this.totalWatch, this.totalTime, required this.status,
  }) : super(key: key);

  final String colorWidget;
  final String imageUrl;
  final String name, title, time , status;
  final int numberOfVideos, numberOfLessons;
  final dynamic totalWatch,totalTime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(int.parse(colorWidget.replaceAll('#', '0xFF'))),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyles.size18FontWidget700White
                          .copyWith(fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  width: 150, // Set the width to limit available space
                  child: Text(
                    title,
                    overflow: TextOverflow
                        .ellipsis, // Truncate with ellipsis if text overflows
                    style: TextStyles.size18FontWidget700White
                        .copyWith(fontSize: 11),
                  ),
                ),
                Row(
                  children: [
                     FlowChartWidget(
                       status: status,
                      totalTime: totalTime,
                      totalWatch: totalWatch,
                    ),
                    const VerticalDivider(endIndent: 10,indent: 10,color: Colors.white,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                                width: 10,
                                height: 10,
                                "assets/images/lessons_icon.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              " $numberOfLessons دروس ",
                              style: TextStyles.size18FontWidget700White
                                  .copyWith(fontSize: 11),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                                width: 10,
                                height: 10,
                                "assets/images/videoIcon.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              " $numberOfVideos فيديو ",
                              style: TextStyles.size18FontWidget700White
                                  .copyWith(fontSize: 11),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                                width: 10,
                                height: 10,
                                "assets/images/clock.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              time,
                              style: TextStyles.size18FontWidget700White
                                  .copyWith(fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 100,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.black.withOpacity(0.1)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      side: const BorderSide(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          onPressed: () {},
                          child: Text(
                            S.of(context).start_studying,
                            style: TextStyles.size18FontWidget700White
                                .copyWith(fontSize: 13),
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top:
              -10, // Move the black container 50 units above the larger container
          left: -5,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
            ),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover, // Fill the entire container
            ),
          ),
        ),
      ],
    );
  }
}
