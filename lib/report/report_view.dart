import 'package:auto_route/annotations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/report/report_viewmodel.dart';
import 'package:stacked/stacked.dart';

@RoutePage()
class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReportViewModel>.reactive(
      viewModelBuilder: () => ReportViewModel(),
      onViewModelReady: (viewModel) => viewModel.onModelReady(),
      builder: (BuildContext context, viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(),
          body: AspectRatio(
            aspectRatio: 1,
            child: LineChart(
              LineChartData(
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 3),
                      const FlSpot(2.6, 2),
                      const FlSpot(4.9, 5),
                      const FlSpot(6.8, 2.5),
                      const FlSpot(8, 4),
                      const FlSpot(9.5, 3),
                      const FlSpot(11, 4),
                    ],
                    isCurved: true,
                    dotData: const FlDotData(show: true),
                    color: Colors.blue,
                    barWidth: 5,
                    belowBarData: BarAreaData(
                      show: true,
                      color: Colors.green.withOpacity(
                        0.7,
                      ),
                    ),
                  ),
                ],
                minX: 0,
                minY: 11,
                maxX: 2,
                maxY: 5,
                backgroundColor: Colors.black,
                titlesData: const FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    axisNameWidget: Text("X axis"),
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      interval: 3,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    axisNameWidget: Text("Y axis"),
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 40,
                    ),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  getDrawingHorizontalLine: (value) => const FlLine(
                    color: Colors.greenAccent,
                    strokeWidth: 0.5,
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(
                    color: Colors.red,
                    width: 5,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
