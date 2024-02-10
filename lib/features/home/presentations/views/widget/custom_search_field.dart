import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key, this.onTap, this.onPressed});
  final void Function()? onTap;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
      ),
      child: TextField(
        onTap: onTap,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          prefixIcon: IconButton(
            onPressed: onPressed,
            icon: const Icon(Icons.search, color: Colors.grey),
          ),
          hintText: "Search your books",
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          border: buildOutlineInputBuilder(),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBuilder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    );
  }
}
