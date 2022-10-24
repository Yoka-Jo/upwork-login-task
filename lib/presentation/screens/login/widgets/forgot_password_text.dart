import 'package:flutter/material.dart';

import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/text/styles_manager.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        AppStrings.forgotPassword,
        style: getSemiBoldStyle(
          color: AppColors.green,
          fontSize: 16.0,
          family: FontFamilies.inter,
        ),
      ),
    );
  }
}
