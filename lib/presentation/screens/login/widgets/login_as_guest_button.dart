import 'package:flutter/material.dart';

import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/text/styles_manager.dart';
import '../../../resources/values_manager.dart';

class LoginAsGuestButton extends StatelessWidget {
  const LoginAsGuestButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppSizeH.s20),
          child: Text(
            AppStrings.loginAsGuest,
            style: getMediumStyle(
                color: AppColors.green,
                fontSize: 15.0,
                family: FontFamilies.roboto),
          ),
        ));
  }
}
