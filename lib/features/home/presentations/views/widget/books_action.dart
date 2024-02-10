import 'package:book/core/widgets/custom_button.dart';
import 'package:book/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomActionButton(
              text: "Free",
              backgroundcolor: Colors.black,
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomActionButton(
              onPressed: () async {
                final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);

                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              fontsize: 16,
              text: "Free preview",
              backgroundcolor: const Color(0xff2d0c92),
              textcolor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
