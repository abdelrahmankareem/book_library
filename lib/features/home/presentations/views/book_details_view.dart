import 'package:book/core/utils/styles.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:book/features/home/presentations/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book/features/home/presentations/views/widget/books_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
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
          "Details",
          style: Styles.textStyle16.copyWith(
              color: const Color(0xff2d0c92), fontWeight: FontWeight.bold),
        ),
      ),
      body: BooksDetailsViewBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
