import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 14,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: 6,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            "(2054)",
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
