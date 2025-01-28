import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard_app/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard_app/views/widgets/income_section.dart';
import 'package:responsive_dashboard_app/views/widgets/my_cards_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                SizedBox(
                  height: 24,
                ),
                MyCardsAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
