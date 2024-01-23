import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/presentations/views/widget/custom_search_field.dart';
import 'package:book/features/search/presentation/view/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchField(),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: SearchResultListView(),
          ),
        )
      ],
    );
  }
}
