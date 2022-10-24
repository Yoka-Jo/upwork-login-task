import 'package:flutter/material.dart';

import '../../colors_manager.dart';
import '../../text/styles_manager.dart';
import '../../values_manager.dart';

InputDecorationTheme inputDecorationLightTheme() => InputDecorationTheme(
      hintStyle: getRegularStyle(
        color: AppColors.grey,
        fontSize: 16,
      ),
      contentPadding: EdgeInsets.all(AppSizeH.s16),
      fillColor: AppColors.white,
      filled: true,
      errorStyle: getRegularStyle(color: AppColors.red),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizeH.s100),
        borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizeH.s100),
        borderSide: const BorderSide(color: AppColors.black, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizeH.s100),
        borderSide: const BorderSide(width: 1.0, color: AppColors.red),
      ),
    );
