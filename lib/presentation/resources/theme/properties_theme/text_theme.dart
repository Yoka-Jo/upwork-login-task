import 'package:flutter/material.dart';

import '../../colors_manager.dart';
import '../../text/styles_manager.dart';

TextTheme textLightTheme() => TextTheme(
      headlineLarge:
          getBoldStyle(color: AppColors.black, family: FontFamilies.oswald),
      titleLarge: getSemiBoldStyle(color: AppColors.black),
      titleMedium: getMediumStyle(
        color: AppColors.black,
      ),
      titleSmall: getRegularStyle(color: AppColors.black),
    );
