import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 0 ? 1.45 : null,
          value: 40,
          color: const Color(0XFF208BC7),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 1 ? 2.15 : null,
          value: 25,
          color: const Color(0XFF4EB7F2),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalty' : '20%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 2 ? 1.35 : null,
          value: 20,
          color: const Color(0XFF064060),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          titlePositionPercentageOffset: activeIndex == 3 ? 1.45 : null,
          value: 22,
          color: const Color(0XFFE2DECD),
          radius: activeIndex == 3 ? 60 : 50,
        )
      ],
    );
  }
}
