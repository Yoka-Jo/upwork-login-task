import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/values_manager.dart';
import '../cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: LoginCubit.get(context).areInputsValid ? () {} : null,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: AppSizeH.s20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  AppStrings.login,
                ),
                SizedBox(
                  width: AppSizeW.s14,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: AppSizeH.s16,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
