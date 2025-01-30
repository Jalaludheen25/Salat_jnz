import 'package:salat_al_janaza/constants/colorclass.dart';

import 'package:flutter/material.dart';

const String primaryFontName = 'Poppins';

class TextStyleClass {
  static const double textHeight = 1.3;

  static TextStyle black16_400 = const TextStyle(
      fontFamily: primaryFontName,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ColorClass.black);
 

  static TextStyle primaryFont300(double size, Color color) => TextStyle(
      fontFamily: primaryFontName,
      fontWeight: FontWeight.w300,
      color: color,
      height: textHeight,
      fontSize: size);

  static TextStyle primaryFont600(double size, Color color) => TextStyle(
      fontFamily: primaryFontName,
      fontWeight: FontWeight.w600,
      color: color,
      height: textHeight,
      fontSize: size);

  static TextStyle primaryFontMalayalam(
          double size, Color color, FontWeight bold,
          {FontWeight weight = FontWeight.w700}) =>
      TextStyle(
          fontFamily: 'NotoSansMalyalam',
          fontWeight: weight,
          color: color,
          height: textHeight,
          fontSize: size);

  // Title style
  static TextStyle malayalamTitle = const TextStyle(
    fontFamily: 'NotoSansMalyalam',
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  // Subtitle style
  static TextStyle malayalamSubtitle = TextStyle(
    fontFamily: 'NotoSansMalyalam',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.grey[500],
  );

  // Body text style
  static TextStyle malayalamBody = const TextStyle(
    fontFamily: 'NotoSansMalyalam',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    height: 1.5,
  );

  static TextStyle primaryFontArabic(double size, Color color) => TextStyle(
      fontFamily: 'Scheherazade',
      fontWeight: FontWeight.w700,
      color: color,
      height: textHeight,
      fontSize: size);
}
