import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

class FlowChartWidget extends StatefulWidget {
  const FlowChartWidget({Key? key, this.totalWatch, this.totalTime, this.status}) : super(key: key);

  final String? totalWatch;
  final String? totalTime;
  final String? status;

  @override
  FlowChartWidgetState createState() => FlowChartWidgetState();
}

class FlowChartWidgetState extends State<FlowChartWidget> {
  @override
  Widget build(BuildContext context) {
    // Check the status and render accordingly
    return widget.status == 'opened'
        ? _buildChart()
        : Column(
      crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.black45,
                ),
                height: 50,
                width: 50,
                child: const Icon(Icons.lock, size: 20, color: Colors.white),
              ),
            ),
          ],
        );
  }

  Widget _buildChart() {
    // Convert totalWatch and totalTime to double
    double watchTime = double.tryParse(widget.totalWatch ?? '') ?? 0.0;
    double totalTime = double.tryParse(widget.totalTime ?? '') ?? 1.0; // Default to 1 if totalTime is null or invalid

    // Calculate the ratio of watchTime to totalTime
    double watchRatio = totalTime != 0 ? watchTime / totalTime : 0;

    List<NumericData> numericDataList = [
      NumericData(domain: 1, measure: watchRatio, color: const Color(0xffD9D9D9)),
      NumericData(domain: 2, measure: 1 - watchRatio, color: Colors.black45),
    ];

    return SizedBox(
      width: 70,
      height: 75,
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: DChartPieN(
              data: numericDataList,
            ),
          ),
          Center(
            child: Text(
              "${watchRatio.toStringAsFixed(0)}%", // Format the ratio with 2 decimal places
              style: const TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
