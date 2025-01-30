import 'package:flutter/material.dart';
import 'package:responsive_dashboard_app/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard_app/utils/images.dart';
import 'package:responsive_dashboard_app/views/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isActive: activeIndex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isActive: activeIndex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isActive: activeIndex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );

    // children:
    //     items.map((e) => AllExpensesItem(allExpensesItemModel: e)).toList(),

    //   children: items.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       var item = e.value;
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //             child: AllExpensesItem(
    //               isActive: activeIndex == index,
    //               allExpensesItemModel: item,
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }
}
