import 'package:book/core/utils/app_router.dart';

import 'package:book/features/home/presentations/views/widget/best_seller_section.dart';

import 'package:book/features/home/presentations/views/widget/custom_search_field.dart';
import 'package:book/features/home/presentations/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchField(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
              ),
              const FeaturedListBooksView(),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerSection(),
        )
      ],
    );
  }
}
