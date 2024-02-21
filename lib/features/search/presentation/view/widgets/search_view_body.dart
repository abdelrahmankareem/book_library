import 'package:book/core/utils/styles.dart';

import 'package:book/features/home/presentations/views/widget/custom_search_field.dart';
import 'package:book/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key, required this.bookName});

  final String bookName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: SearchResultListView(bookName: bookName),
          ),
        )
      ],
    );
  }
}
