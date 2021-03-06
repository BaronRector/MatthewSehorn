import 'package:flutter/material.dart';

class LightThemeConsts {
  //Colors
  //Colors with opacity can't be a const

  // static const Color background = Color(0xff1F2129);
  // static const Color canvas = Color(0xff292E3C);

  // static const Color background = Color(0xff1F1D2B);
  // static const Color canvas = Color(0xff252836);
  static Color background = Color(0xffEEEEF2);
  static Color canvas = Color(0xffFAFAFA);
  static Color primary = Color(0xff007bff);
  static Color listTileHover = primary.withOpacity(.24);
  static Color fontColor1 = Color(0xff445975);
  static Color fontColor1Light = fontColor1.withOpacity(.65);
  static Color fontColor2 = Color(0xff2E4564);
  static Color fontColor2Light = fontColor2.withOpacity(.65);
  static Color fontColor3 = Color(0xff95ADD8);
  static Color fontColor3Light = fontColor3.withOpacity(.65);

  //Border radius
  static const Radius largeRadius = Radius.circular(20);
  static const Radius mediumRadius = Radius.circular(12);
}
