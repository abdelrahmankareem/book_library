import 'package:book/features/home/presentations/views/widget/books_details_Section.dart';

import 'package:book/features/home/presentations/views/widget/similar_books_section.dart';

import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(children: [
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSection(),
              SizedBox(
                height: 40,
              ),
            ])),
      ],
    );
  }
}
