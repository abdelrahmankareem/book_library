import 'package:book/features/home/presentations/views/widget/best_seller_section.dart';

import 'package:book/features/home/presentations/views/widget/custom_search_field.dart';
import 'package:book/features/home/presentations/views/widget/featured_book_list_view.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchField(),
              FeaturedListBooksView(),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerSection(),
        )
      ],
    );
  }
}
