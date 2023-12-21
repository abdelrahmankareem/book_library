import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
            decoration: InputDecoration(
          labelStyle: TextStyle(color: Colors.black),
          labelText: "Search your books",
          hintText: "Search your books",
          hintStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
        ))
      ],
    );
  }
}
