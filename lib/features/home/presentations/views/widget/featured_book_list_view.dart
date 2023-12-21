import 'package:book/features/home/presentations/views/widget/custom_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedListBoxView extends StatelessWidget {
  const FeaturedListBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: CustomListFeaturedBookItem(),
          );
        },
      ),
    );
  }
}
