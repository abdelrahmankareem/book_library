import 'package:book/core/utils/assets.dart';
import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentations/views/widget/custom_search_field.dart';
import 'package:book/features/home/presentations/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchField(),
          FeaturedListBooksView(),
          SizedBox(
            height: 50,
          ),
          Text(
            "Best Seller",
            style: Styles.titleMedium,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 0.8 / 1.5,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AssetsData.logo,
                  ),
                ),
              ),
            ),
          ),
          Column()
        ],
      ),
    );
  }
}
