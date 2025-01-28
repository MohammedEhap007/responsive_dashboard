import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard_app/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard_app/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard_app/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0XFFF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
