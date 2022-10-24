import 'package:google_fonts/google_fonts.dart';

import 'font_manager.dart';
import 'package:flutter/material.dart';

//put here font families
enum FontFamilies { roboto, oswald, inter }

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color color, FontFamilies family) {
  //switch on family and return the appropriate TextStyle
  switch (family) {
    case FontFamilies.roboto:
      return GoogleFonts.roboto(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
    case FontFamilies.oswald:
      return GoogleFonts.oswald(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
    case FontFamilies.inter:
      return GoogleFonts.inter(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      );
  }
}

//You can put here the default family

TextStyle getRegularStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.roboto,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color, family);
}

TextStyle getMediumStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.roboto,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color, family);
}

TextStyle getLightStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.roboto,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color, family);
}

TextStyle getBoldStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.roboto,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color, family);
}

TextStyle getSemiBoldStyle(
    {double fontSize = 12,
    FontFamilies family = FontFamilies.roboto,
    required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color, family);
}
