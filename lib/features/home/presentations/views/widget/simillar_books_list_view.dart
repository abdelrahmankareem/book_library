import 'package:book/features/home/presentations/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarbookslistView extends StatelessWidget {
  const SimilarbookslistView({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: CustomBookImage(),
            );
          },
        ),
      ),
    );
  }
}
