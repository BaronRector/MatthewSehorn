import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/app_menu_button.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:vrouter/vrouter.dart';

class AppMenuFull extends StatelessWidget {
  const AppMenuFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.end,
        spacing: 20.0,
        runSpacing: 10.0,
        children: [
          AppMenuButton(
            pressedFunc: () => {
              VRouterData.of(context).push('/'),
            },
            label: Strings.home,
          ),
          AppMenuButton(
            pressedFunc: () => {
              VRouterData.of(context).push('/resume'),
            },
            label: Strings.resume,
          ),
          AppMenuButton(
            pressedFunc: () => {
              VRouterData.of(context).push('/portfolio'),
            },
            label: Strings.portfolio,
          ),
          AppMenuButton(
            pressedFunc: () => {
              VRouterData.of(context).push('/contact'),
            },
            label: Strings.contact,
          ),
          AppMenuButton(
            pressedFunc: () => {
              VRouterData.of(context).push('/about'),
            },
            label: Strings.about,
          ),
        ],
      ),
    );
  }
}
