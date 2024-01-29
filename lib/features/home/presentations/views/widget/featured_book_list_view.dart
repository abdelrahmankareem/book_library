import 'package:book/core/utils/styles.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';

import 'package:book/features/home/presentations/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:book/features/home/presentations/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListBooksView extends StatelessWidget {
  const FeaturedListBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CustomBookImage(
                      urlImage:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Text(
            state.errMessage,
            style: Styles.textStyle18,
          );
        } else {
          return const CustomLoadingindicator();
        }
      },
    );
  }
}
