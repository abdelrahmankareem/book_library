import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentations/views/widget/simillar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "You can also like ",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SimilarbookslistView(),
      ],
    );
  }
}
