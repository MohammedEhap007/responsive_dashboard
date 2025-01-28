import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/transaction_model.dart';
import 'package:responsive_dashboard_app/utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16.copyWith(
            color: const Color(0XFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20.copyWith(
              color: transactionModel.isWithdrawal
                  ? const Color(0XFFF3735E)
                  : const Color(0XFF7CD87A)),
        ),
      ),
    );
  }
}
