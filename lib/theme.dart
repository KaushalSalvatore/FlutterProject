import 'package:flutter/material.dart';
import 'package:twostep/utils/colors.dart';
import 'package:twostep/utils/utils.dart';

ThemeData buildThemeData(){

  final baseTheme = ThemeData(fontFamily: AvailableFonts.primaryFont);

  // return baseTheme.copyWith();
  return baseTheme.copyWith(
    primaryColor: primaryColor,
    primaryColorDark: primaryDark,
    primaryColorLight: primaryLight,
    accentColor: secondaryColor,
  );
}