import 'package:flutter/material.dart';
import 'package:upwork_task/presentation/resources/theme/properties_theme/elevated_button_theme.dart';
import 'package:upwork_task/presentation/resources/theme/properties_theme/input_decoration_theme.dart';
import 'package:upwork_task/presentation/resources/theme/properties_theme/outlined_button_theme.dart';

ThemeData getLightTheme() {
  return ThemeData(
    elevatedButtonTheme: elevatedButtonLightThemeData(),
    outlinedButtonTheme: outlinedButtonLightThemeData(),
    inputDecorationTheme: inputDecorationLightTheme(),
  );
}
