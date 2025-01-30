import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/views/widgets/item_details.dart';

import '../../models/item_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const itemDetailsModel = [
    ItemDetailsModel(
      color: Color(0XFF208BC7),
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: Color(0XFF4DB4F2),
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: Color(0XFF064060),
      title: 'Product royalty',
      value: '20%',
    ),
    ItemDetailsModel(
      color: Color(0XFFE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemDetailsModel
          .map((e) => ItemDetails(itemDetailsModel: e))
          .toList(),
    );

    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: itemDetailsModel.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(
    //       itemDetailsModel: itemDetailsModel[index],
    //     );
    //   },
    // );
  }
}
