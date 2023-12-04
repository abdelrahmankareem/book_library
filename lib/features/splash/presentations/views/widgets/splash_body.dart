import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          "Welcome To your Dreams",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
