import 'package:flutter/material.dart';

import '../../../resources/colors_manager.dart';
import '../../../resources/strings_manager.dart';
import '../../../resources/text/styles_manager.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Text(
        AppStrings.dontHaveAccount,
        style: getMediumStyle(
            color: AppColors.green,
            fontSize: 13.0,
            family: FontFamilies.roboto),
      ),
    );
  }
}
