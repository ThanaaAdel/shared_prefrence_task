import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shared_prefrence_task/utils/helper.dart';

class SliderWidget extends StatelessWidget {
  final List<String> imageFiles;

  const SliderWidget({
    Key? key,
    required this.imageFiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          SizedBox(
            width: context.screenWidth * 0.85,
            height: context.screenHeight * 0.22,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  imageFiles[index],
                  width: double.infinity,
                  fit: BoxFit.cover,
                );
              },
              pagination: SwiperPagination(
                builder: SwiperCustomPagination(
                  builder: (BuildContext context, SwiperPluginConfig config) {
                    List<Widget> indicators = [];
                    for (int i = 0; i < config.itemCount; i++) {
                      indicators.add(
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          width: i == config.activeIndex ? 30 : 13,
                          height: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            shape: BoxShape.rectangle,
                            color: i == config.activeIndex
                                ? const Color(0xFF00B3DC)
                                : Colors.grey,
                          ),
                        ),
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators,
                    );
                  },
                ),
              ),
              itemCount: imageFiles.length,
            ),
          ),
        ],
      ),
    );
  }
}
