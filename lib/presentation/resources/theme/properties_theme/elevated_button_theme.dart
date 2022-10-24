import 'package:flutter/material.dart';

import '../../colors_manager.dart';
import '../../values_manager.dart';

ElevatedButtonThemeData elevatedButtonLightThemeData() =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        minimumSize: Size(double.infinity, AppSizeH.s48),
        backgroundColor: AppColors.green,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizeH.s100),
        ),
      ),
    );
