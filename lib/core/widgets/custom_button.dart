import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.backgroundcolor,
    required this.textcolor,
    required this.borderRadius,
    required this.text,
    this.fontsize,
    this.onPressed,
  });
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius borderRadius;
  final String text;
  final double? fontsize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.bold,
                color: textcolor,
                fontSize: fontsize),
          )),
    );
  }
}
