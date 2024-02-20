import 'package:book/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:book/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.bookName});

  final String bookName;

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    BlocProvider.of<SearchCubit>(context)
        .fetchSearchresult(name: widget.bookName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(bookName: widget.bookName),
      ),
    );
  }
}
