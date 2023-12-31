import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ExpenseGraph extends StatelessWidget {
  final int days;
  final int maxExpense;
  const ExpenseGraph({
    super.key,
    required this.days,
    required this.maxExpense,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) => const FlLine(
              color: Colors.amberAccent,
              strokeWidth: 0.25,
            ),
            getDrawingHorizontalLine: (value) => const FlLine(
              color: Colors.amberAccent,
              strokeWidth: 0.25,
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
              color: const Color(0xff37434d),
              width: 1,
            ),
          ),
          minX: 0,
          maxX: 9,
          minY: 0,
          maxY: 7,
          backgroundColor: Colors.white54,
          titlesData: const FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              axisNameWidget: Text("Dates"),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 30,
                interval: 3,
              ),
            ),
            leftTitles: AxisTitles(
              axisNameWidget: Text("Expenses"),
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 3),
                const FlSpot(0.5, 4),
                const FlSpot(1, 1),
                const FlSpot(1.5, 2),
                const FlSpot(2, 4),
                const FlSpot(2.5, 3),
                const FlSpot(3, 2),
                const FlSpot(3.5, 1),
                const FlSpot(4, 5),
                const FlSpot(4.5, 2),
                const FlSpot(5, 1),
                const FlSpot(5.5, 2),
                const FlSpot(6, 5),
                const FlSpot(6.5, 6),
              ],
              isCurved: false,
              color: Colors.blue,
              dotData: const FlDotData(show: true),
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
