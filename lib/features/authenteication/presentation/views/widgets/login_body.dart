import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/assets.dart';
import 'package:book/features/authenteication/data/auth_cubit/authcubit.dart';
import 'package:book/features/authenteication/data/auth_cubit/authstate.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_button.dart';
import 'package:book/features/authenteication/presentation/views/widgets/custom_textfield.dart';
import 'package:book/features/authenteication/presentation/views/widgets/show_snack_par.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginBody extends StatelessWidget {
  LoginBody({
    super.key,
  });
  String? email;
  String? password;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LoginLoding) {
          isloading = true;
        } else if (state is LoginSucces) {
          GoRouter.of(context).push(AppRouter.kHomeview);
          isloading = false;
        } else if (state is LoginFailure) {
          showsnackbar(context, state.errMessage);
          isloading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isloading,
          child: ListView(
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
              CustomTextFormField(
                onChanged: (data) {
                  email = data;
                },
                label: "E-mail",
                hint: "Write your Email",
              ),
              const SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                  onChanged: (data) {
                    password = data;
                  },
                  label: "Password",
                  hint: "••••••••••••••••"),
              const SizedBox(
                height: 24,
              ),
              CustomButton(
                onTap: () {
                  BlocProvider.of<AuthCubit>(context)
                      .LoginUser(email: email!, password: password!);
                },
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
          ),
        );
      },
    );
  }
}
