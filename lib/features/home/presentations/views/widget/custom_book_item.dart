import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 15,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(urlImage),
            ),
          ),
        ),
      ),
    );
  }
}
