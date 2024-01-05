import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 15,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.logo),
            ),
          ),
        ),
      ),
    );
  }
}
