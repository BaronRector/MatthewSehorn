import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/Material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/services/theme_switch_service.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appThemeState = context.read(appThemeStateNotifier);

    return Container(
      child: DayNightSwitcherIcon(
        isDarkModeEnabled: appThemeState.isDarkModeEnabled,
        onStateChanged: (isDarkModeEnabled) {
          isDarkModeEnabled ? appThemeState.setDarkTheme() : appThemeState.setLightTheme();
        },
      ),
    );
  }
}
