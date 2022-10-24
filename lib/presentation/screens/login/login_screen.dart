import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upwork_task/presentation/resources/values_manager.dart';
import 'package:upwork_task/presentation/screens/login/cubit/login_cubit.dart';

import 'widgets/dont_have_account_text.dart';
import 'widgets/forgot_password_text.dart';
import 'widgets/life_time_logo.dart';
import 'widgets/login_as_guest_button.dart';
import 'widgets/login_button.dart';
import 'widgets/login_form_fields.dart';
import 'widgets/or_widget.dart';
import 'widgets/welcome_to_life_time_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s20),
            child: Column(
              children: [
                const LifeTimeLogo(),
                SizedBox(height: AppSizeH.s6),
                const WelcomeToLifeTimeText(),
                SizedBox(height: AppSizeH.s36),
                const LoginFormFields(),
                SizedBox(height: AppSizeH.s12),
                const ForgotPasswordText(),
                SizedBox(height: AppSizeH.s12),
                const LoginButton(),
                const ORWidget(),
                const LoginAsGuestButton(),
                const Spacer(),
                const DontHaveAccountText(),
                SizedBox(
                  height: AppSizeH.s48,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
