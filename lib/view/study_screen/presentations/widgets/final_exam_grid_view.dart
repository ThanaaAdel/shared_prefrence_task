import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../models/find_exam_by_id_model/find_exam_by_id_model.dart';
import '../../../../utils/styles.dart';
import '../../../../widgets/show_loading_indicator.dart';
import '../../manager/final_exam_by_id_cubit/final_exam_by_id_cubit.dart';
import '../../manager/final_exam_by_id_cubit/final_exam_by_id_state.dart';

class FinalExamGridView extends StatefulWidget {
  const FinalExamGridView({Key? key});

  @override
  State<FinalExamGridView> createState() => _FinalExamGridViewState();
}

class _FinalExamGridViewState extends State<FinalExamGridView> {
  @override
  void initState() {
    context.read<FinalExamByIdCubit>().getFinalExamData(id: 19);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FinalExamByIdCubit, FinalExamByIdState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const ShowLoadingIndicator();
        } else if (state is LoadedState) {
          var cubit = context.read<FinalExamByIdCubit>();

          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemCount: cubit.finalExamByIdData.data!.length,
            itemBuilder: (context, index) {
              var data = cubit.finalExamByIdData.data![index];
              return buildExamItem(data);
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

  Widget buildExamItem(Data data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(int.parse(data.backgroundColor!.replaceAll('#', '0xFF'))),
        ),
        height: 200,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: SizedBox(
                width: 170,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/videoIcon.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 120,
                      height: 180,
                      child: Text(
                        data.name!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.size18FontWidget700White.copyWith(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => _launchPDF(data.pdfExamUpload!),
                  child: Image.asset(
                    "assets/images/test.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'MB${data.totalTime} ', // Assuming the total time represents the size
                        style: TextStyles.size20FontWidget700Black.copyWith(
                          fontSize: 13,
                        ),
                      ),
                      Image.asset("assets/images/upload_pdf.png"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchPDF(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
