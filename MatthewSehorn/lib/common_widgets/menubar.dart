import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/appbar_header.dart';
import 'package:matthew_sehorn/common_widgets/app_menu_full.dart';
import 'package:matthew_sehorn/common_widgets/theme_switch.dart';

//Header used for the Fullscreen view
//Displays Name and logo along with the page buttons
class MenuBar extends StatelessWidget {
  const MenuBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 36,
        left: 36,
        right: 36,
      ),
      margin: EdgeInsets.only(
        bottom: 40,
      ),
      child: Row(
        children: [
          AppBarHeader(),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Tooltip(
                message: 'Switch Theme',
                child: ThemeSwitch(),
              ),
            ),
          ),
          AppMenuFull(),
        ],
      ),
    );
  }
}
