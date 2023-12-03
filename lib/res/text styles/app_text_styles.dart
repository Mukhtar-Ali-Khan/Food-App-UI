import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/app_colors.dart';

class AppTextStyles {
  static TextStyle bodySmall(
      {double fontSize = 14, FontWeight fontWeight = FontWeight.w500}) {
    return GoogleFonts.comfortaa(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: AppColors.lightBlack,
    );
  }

  static TextStyle titleBold({double fontSize = 20}) {
    return GoogleFonts.titanOne(
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: AppColors.lightBlack,
    );
  }

  static TextStyle bodyHeading(
      {double fontSize = 18,
      FontWeight fontWeight = FontWeight.w800,
      Color color = Colors.black}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight, fontSize: fontSize, color: color);
  }
}
