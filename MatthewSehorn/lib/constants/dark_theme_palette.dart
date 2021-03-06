import 'package:flutter/material.dart';

class DarkThemeConsts {
  //Colors
  //Colors with opacity can't be a const

  static Color background = Color(0xff1F1F2D);
  static Color canvas = Color(0xff27293D);
  static Color primary = Color(0xff007bff);
  static Color listTileHover = primary.withOpacity(.24);
  static Color fontColor1 = Color(0xfff5f5f5);
  static Color fontColor1Light = fontColor1.withOpacity(.65);
  static Color fontColor2 = Color(0xffd5d5d5);
  static Color fontColor2Light = fontColor2.withOpacity(.65);
  static Color fontColor3 = Color(0xffaaaaaa);
  static Color fontColor3Light = fontColor3.withOpacity(.65);

  //Border radius
  static const Radius largeRadius = Radius.circular(20);
  static const Radius mediumRadius = Radius.circular(12);
}
