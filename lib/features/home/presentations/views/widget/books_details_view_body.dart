import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/home/presentations/views/widget/books_details_section.dart';

import 'package:book/features/home/presentations/views/widget/similar_books_section.dart';

import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              BookDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBooksSection(),
              const SizedBox(
                height: 40,
              ),
            ])),
      ],
    );
  }
}
