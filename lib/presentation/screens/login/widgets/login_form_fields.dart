import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/components/default_text_form.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/values_manager.dart';
import '../cubit/login_cubit.dart';

class LoginFormFields extends StatefulWidget {
  const LoginFormFields({super.key});

  @override
  State<LoginFormFields> createState() => _LoginFormFieldsState();
}

class _LoginFormFieldsState extends State<LoginFormFields> {
  final emailController = TextEditingController();

  final passowordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      context.read<LoginCubit>().setEmail(emailController.text);
    });
    passowordController.addListener(() {
      context.read<LoginCubit>().setPassword(passowordController.text);
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passowordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          DefaultTextForm(
            title: AppStrings.emailOrPhoneNumber,
            hintText: AppStrings.exampleForEmail,
            textEditingController: emailController,
          ),
          SizedBox(
            height: AppSizeH.s20,
          ),
          DefaultTextForm(
            title: AppStrings.choosePassword,
            hintText: AppStrings.exampleForPassword,
            textEditingController: passowordController,
            isObscure: true,
            suffixIcon: const Icon(Icons.visibility),
          ),
        ],
      ),
    );
  }
}
