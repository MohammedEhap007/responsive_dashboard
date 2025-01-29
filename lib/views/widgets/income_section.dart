import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard_app/views/widgets/income_section_body.dart';
import 'package:responsive_dashboard_app/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            IncomeSectionHeader(),
            SizedBox(
              height: 16,
            ),
            IncomeSectionBody()
          ],
        ),
      ),
    );
  }
}
