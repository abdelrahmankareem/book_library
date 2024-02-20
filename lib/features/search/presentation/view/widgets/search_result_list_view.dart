import 'package:book/core/utils/styles.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';

import 'package:book/features/home/presentations/views/widget/bes_seller_listview_item.dart';
import 'package:book/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key, required this.bookName});

  final String bookName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
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
