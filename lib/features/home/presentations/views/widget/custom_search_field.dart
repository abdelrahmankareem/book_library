import 'package:book/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String name;

    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
      ),
      child: TextField(
        onChanged: (data) {
          name = data;
        },
        onSubmitted: (data) {
          name = data;

          GoRouter.of(context).push(AppRouter.kSearchView, extra: name);
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          prefixIcon: IconButton(
            icon: const Icon(Icons.search, color: Colors.grey),
            onPressed: () {},
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
