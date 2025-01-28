import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: Styles.styleSemiBold20,
        ),
        Text(
          'See All',
          style: Styles.styleMedium16.copyWith(
            color: const Color(0XFF4EB7F2),
          ),
        )
      ],
    );
  }
}
