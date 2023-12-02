import 'package:book/widgets/custom_button.dart';
import 'package:book/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 75,
        ),
        SizedBox(
          height: 200,
          child: Image.asset("lib/assets/book photo.png"),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text(
            "Sign In",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        const CustomTextFormField(
          label: "Email adress",
          hint: "Write your Email",
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomTextFormField(label: "password", hint: "••••••••••••••••"),
        const SizedBox(
          height: 24,
        ),
        const CustomButton(
          text: "Sign in",
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account?',
              style: TextStyle(
                color: Color(0xff2d0c92),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                '  Register',
                style: TextStyle(color: Color(0xff2d0c92)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
