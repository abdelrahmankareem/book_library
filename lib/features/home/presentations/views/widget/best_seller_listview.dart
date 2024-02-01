import 'package:book/core/utils/styles.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';
import 'package:book/features/home/presentations/manager/Best_seller_cubit/best_seller_cubit.dart';
import 'package:book/features/home/presentations/views/widget/bes_seller_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
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
        } else if (state is BestSellerFailure) {
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
