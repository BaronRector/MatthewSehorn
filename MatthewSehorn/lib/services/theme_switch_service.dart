import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:html' as html;

class AppThemeState extends ChangeNotifier {
  var isDarkModeEnabled = (html.window.localStorage['appThemeMode'] == 'dark' || html.window.localStorage['appThemeMode'] == null);

  void setLightTheme() {
    isDarkModeEnabled = false;
    html.window.localStorage['appThemeMode'] = 'light';
    notifyListeners();
  }

  void setDarkTheme() {
    isDarkModeEnabled = true;
    html.window.localStorage['appThemeMode'] = 'dark';
    notifyListeners();
  }
}

// Theme
final appThemeStateNotifier = ChangeNotifierProvider((ref) => AppThemeState());
