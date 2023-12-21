import 'package:book/features/home/presentations/views/widget/custom_search_dield.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomSearchField()],
    );
  }
}
