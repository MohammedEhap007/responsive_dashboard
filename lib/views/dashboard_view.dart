import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/views/widgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard_app/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F9FA),
      body: AdaptiveLayoutBulider(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
