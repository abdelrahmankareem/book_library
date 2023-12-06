import 'package:book/core/utils/assets.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_button.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
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
      CustomButton(
        onTap: () {
          GoRouter.of(context).pop();
        },
        text: "Register",
      )
    ]);
  }
}
