import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentations/views/widget/best_seller_listview.dart';
import 'package:flutter/material.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(child: BestSellerListView()),
      ]),
    );
  }
}
