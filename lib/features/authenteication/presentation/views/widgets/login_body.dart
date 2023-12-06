import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/assets.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_button.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          child: Image.asset(AssetsData.logo),
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
          label: "E-mail",
          hint: "Write your Email",
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomTextFormField(label: "Password", hint: "••••••••••••••••"),
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
              onTap: () {
                GoRouter.of(context).push(AppRouter.kRegisterView);
              },
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
