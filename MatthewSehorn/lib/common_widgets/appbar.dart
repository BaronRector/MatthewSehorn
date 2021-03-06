import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/theme_switch.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key key}) : super(key: key);

  //An AppBar has to implement a preferred Size Widget
  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(),
      leading: Builder(
        builder: (BuildContext context) {
          return Container(
            margin: EdgeInsets.only(left: 16),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          );
        },
      ),
      title: Align(
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            children: [
              SizedBox(
                width: 12,
              ),
              SelectableText(
                Strings.matthew,
                style: Theme.of(context).primaryTextTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SelectableText(
                Strings.sehorn,
                textAlign: TextAlign.left,
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
            ],
          ),
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: ThemeSwitch(),
        ),
      ],
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
    );
  }
}
