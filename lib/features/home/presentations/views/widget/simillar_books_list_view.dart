import 'package:book/core/utils/styles.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';
import 'package:book/features/home/presentations/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book/features/home/presentations/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarbookslistView extends StatelessWidget {
  const SimilarbookslistView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 16, left: 30),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: CustomBookImage(
                      urlImage: "https://images.app.goo.gl/LN51v4h1c7fGi5Kt6",
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
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
