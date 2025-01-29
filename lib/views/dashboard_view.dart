import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/size_config.dart';
import 'package:responsive_dashboard_app/views/widgets/adaptive_layout_builder.dart';
import 'package:responsive_dashboard_app/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard_app/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard_app/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: const Color(0XFFFAFAFA),
              leading: IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0XFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayoutBulider(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
