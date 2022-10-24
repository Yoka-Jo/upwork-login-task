import 'package:flutter/material.dart';

import '../../colors_manager.dart';
import '../../values_manager.dart';

OutlinedButtonThemeData outlinedButtonLightThemeData() =>
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0.0,
        minimumSize: Size(double.infinity, AppSizeH.s48),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeH.s100),
        ),
      ),
    );
