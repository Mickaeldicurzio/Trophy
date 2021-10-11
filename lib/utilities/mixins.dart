import 'package:flutter/material.dart';
import 'package:trophy/utilities/colors.dart';

getBorder(color) {
  return OutlineInputBorder(borderSide: BorderSide(color: color, width: 2));
}

class Mixins {
  static var devider = SizedBox(
      width: 250,
      child: Divider(
        height: 20,
        thickness: 2,
        indent: 20,
        color: AppColors.white.withOpacity(0.6),
        endIndent: 20,
      ));

  static var inputField = InputDecorationTheme(
      focusColor: AppColors.white,
      errorBorder: getBorder(AppColors.error),
      focusedErrorBorder: getBorder(AppColors.white),
      enabledBorder: getBorder(AppColors.white),
      focusedBorder: getBorder(AppColors.white),
      labelStyle: TextStyle(color: AppColors.white));

  static var textTheme = const TextTheme(
    headline1: TextStyle(
        fontSize: 72.0, fontFamily: 'Lato-Bold', fontWeight: FontWeight.bold),
    headline6: TextStyle(
        fontSize: 36.0,
        fontFamily: 'Lato-BoldItalic',
        fontStyle: FontStyle.italic),
    bodyText1: TextStyle(fontSize: 18.0, fontFamily: 'Lato'),
    bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Lato'),
  );
}
