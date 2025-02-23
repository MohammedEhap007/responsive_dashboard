import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0XFF208BC7),
          radius: activeIndex == 0 ? 40 : 30,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0XFF4EB7F2),
          radius: activeIndex == 1 ? 40 : 30,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0XFF064060),
          radius: activeIndex == 2 ? 40 : 30,
          showTitle: false,
        ),
        PieChartSectionData(
          value: 22,
          color: const Color(0XFFE2DECD),
          radius: activeIndex == 3 ? 40 : 30,
          showTitle: false,
        )
      ],
    );
  }
}
