import 'package:book/core/utils/styles.dart';

import 'package:book/features/home/presentations/views/widget/book_rating.dart';
import 'package:book/features/home/presentations/views/widget/books_action.dart';
import 'package:book/features/home/presentations/views/widget/custom_book_item.dart';
import 'package:book/features/home/presentations/views/widget/simillar_books_list_view.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .28),
        child: const CustomBookImage(),
      ),
      const SizedBox(
        height: 45,
      ),
      const Text(
        "The Jungle Book",
        style: Styles.textStyle30,
      ),
      const SizedBox(
        height: 8,
      ),
      Opacity(
        opacity: .7,
        child: Text(
          "abdo kareem",
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      const SizedBox(
        height: 17,
      ),
      const BookRating(
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      const SizedBox(
        height: 37,
      ),
      const BooksAction(),
      const SizedBox(
        height: 50,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like ",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SimilarbookslistView(),
    ]);
  }
}
