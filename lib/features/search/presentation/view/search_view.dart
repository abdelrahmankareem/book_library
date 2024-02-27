import 'package:book/core/utils/styles.dart';
import 'package:book/features/search/presentation/manger/search_cubit/search_cubit.dart';
import 'package:book/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                FontAwesomeIcons.robot,
                color: Color(0xff2d0c92),
              ))
        ],
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              FontAwesomeIcons.angleLeft,
              color: Color(0xff2d0c92),
            )),
        centerTitle: true,
        title: Text(
          "Your Results",
          style: Styles.textStyle16.copyWith(
              color: const Color(0xff2d0c92), fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SearchViewBody(bookName: widget.bookName),
      ),
    );
  }
}
