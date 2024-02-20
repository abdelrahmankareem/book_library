import 'package:book/features/home/presentations/views/widget/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              FontAwesomeIcons.robot,
              color: Color(0xff2d0c92),
              size: 24,
            ),
          )
        ],
        title: const Text(
          "Hello",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
