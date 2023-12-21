import 'package:book/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 25,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .25,
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
      ),
    );
  }
}
