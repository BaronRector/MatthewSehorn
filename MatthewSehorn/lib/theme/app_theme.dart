import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/dark_theme_palette.dart';
import 'package:matthew_sehorn/constants/light_theme_palette.dart';

class AppTheme {
  // Private Constructor
  AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    canvasColor: LightThemeConsts.canvas,
    cardColor: LightThemeConsts.canvas,
    scaffoldBackgroundColor: LightThemeConsts.background,
    primaryColor: LightThemeConsts.primary,
    primaryIconTheme: IconThemeData(
      color: DarkThemeConsts.fontColor1,
    ),
    primaryTextTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: DarkThemeConsts.fontColor1,
      ),
      headline1: TextStyle(
        height: 1.8,
        fontSize: 48,
        color: DarkThemeConsts.fontColor1,
      ),
      headline2: TextStyle(
        fontSize: 36,
        color: DarkThemeConsts.fontColor1,
      ),
      headline3: TextStyle(
        fontSize: 28,
        color: DarkThemeConsts.fontColor1,
      ),
      headline4: TextStyle(
        fontSize: 24,
        color: DarkThemeConsts.fontColor1,
      ),
      headline5: TextStyle(
        fontSize: 20,
        color: DarkThemeConsts.fontColor1,
      ),
      headline6: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor3,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        height: 1.8,
        color: DarkThemeConsts.fontColor2Light,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        color: DarkThemeConsts.fontColor3,
      ),
      subtitle2: TextStyle(
        fontSize: 13,
        color: DarkThemeConsts.fontColor1Light,
      ),
    ),
    textTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: LightThemeConsts.fontColor1,
      ),
      headline1: TextStyle(
        height: 1.8,
        fontSize: 48,
        color: LightThemeConsts.fontColor1,
      ),
      headline2: TextStyle(
        fontSize: 36,
        color: LightThemeConsts.fontColor1,
      ),
      headline3: TextStyle(
        fontSize: 28,
        color: LightThemeConsts.fontColor1,
      ),
      headline4: TextStyle(
        fontSize: 24,
        color: LightThemeConsts.fontColor1,
      ),
      headline5: TextStyle(
        fontSize: 20,
        color: LightThemeConsts.fontColor1,
      ),
      headline6: TextStyle(
        fontSize: 16,
        color: LightThemeConsts.fontColor1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: LightThemeConsts.fontColor3,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        height: 1.8,
        color: LightThemeConsts.fontColor2Light,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        color: LightThemeConsts.fontColor1,
      ),
      subtitle2: TextStyle(
        fontSize: 13,
        color: LightThemeConsts.fontColor1,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    canvasColor: DarkThemeConsts.canvas,
    cardColor: DarkThemeConsts.canvas,
    scaffoldBackgroundColor: DarkThemeConsts.background,
    primaryColor: DarkThemeConsts.primary,
    primaryIconTheme: IconThemeData(
      color: DarkThemeConsts.fontColor1,
    ),
    primaryTextTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: DarkThemeConsts.fontColor1,
      ),
      headline1: TextStyle(
        height: 1.8,
        fontSize: 48,
        color: DarkThemeConsts.fontColor1,
      ),
      headline2: TextStyle(
        fontSize: 36,
        color: DarkThemeConsts.fontColor1,
      ),
      headline3: TextStyle(
        fontSize: 28,
        color: DarkThemeConsts.fontColor1,
      ),
      headline4: TextStyle(
        fontSize: 24,
        color: DarkThemeConsts.fontColor1,
      ),
      headline5: TextStyle(
        fontSize: 20,
        color: DarkThemeConsts.fontColor1,
      ),
      headline6: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor3,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        height: 1.8,
        color: DarkThemeConsts.fontColor2Light,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        color: DarkThemeConsts.fontColor3,
      ),
      subtitle2: TextStyle(
        fontSize: 13,
        color: DarkThemeConsts.fontColor1Light,
      ),
    ),
    textTheme: TextTheme(
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: DarkThemeConsts.fontColor1,
      ),
      headline1: TextStyle(
        height: 1.8,
        fontSize: 48,
        color: DarkThemeConsts.fontColor1,
      ),
      headline2: TextStyle(
        fontSize: 36,
        color: DarkThemeConsts.fontColor1,
      ),
      headline3: TextStyle(
        fontSize: 28,
        color: DarkThemeConsts.fontColor1,
      ),
      headline4: TextStyle(
        fontSize: 24,
        color: DarkThemeConsts.fontColor1,
      ),
      headline5: TextStyle(
        fontSize: 20,
        color: DarkThemeConsts.fontColor1,
      ),
      headline6: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor1,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        color: DarkThemeConsts.fontColor3,
      ),
      bodyText2: TextStyle(
        fontSize: 14,
        height: 1.8,
        color: DarkThemeConsts.fontColor2Light,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        color: DarkThemeConsts.fontColor3,
      ),
      subtitle2: TextStyle(
        fontSize: 13,
        color: DarkThemeConsts.fontColor1Light,
      ),
    ),
  );
}
