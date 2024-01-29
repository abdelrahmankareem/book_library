import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentations/views/widget/book_rating.dart';
import 'package:book/features/home/presentations/views/widget/books_action.dart';
import 'package:book/features/home/presentations/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: const CustomBookImage(
            urlImage: "https://images.app.goo.gl/LN51v4h1c7fGi5Kt6",
          ),
        ),
        const SizedBox(
          height: 8,
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
      ],
    );
  }
}
