import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 16,
        right: 16,
      ),
      child: TextField(
          decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        prefixIcon: Icon(Icons.search, color: Colors.grey),
        hintText: "Search your books",
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      )),
    );
  }
}
