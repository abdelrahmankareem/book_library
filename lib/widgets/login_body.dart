import 'package:book/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 75,
        ),
        SizedBox(
          height: 200,
          child: Image.asset("lib/assets/download (1).jpg"),
        ),
        const Text(
          "Sign In",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomTextFormField(
          label: "Email adress",
          hint: "Write your Email",
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomTextFormField(label: "password", hint: "........")
      ],
    );
  }
}
