import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      shadowColor: Colors.black,
      elevation: 8,
      child: AspectRatio(
        aspectRatio: 1 / 1.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: urlImage,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
