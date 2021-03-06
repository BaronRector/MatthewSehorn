import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:matthew_sehorn/common_widgets/app_menu_button.dart';
import 'package:matthew_sehorn/common_widgets/appbar_header.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:vrouter/vrouter.dart';

class AppBarDrawer extends StatelessWidget {
  const AppBarDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
        child: VNavigationGuard(
          afterUpdate: (_, __, ___) => Scaffold.of(context).openEndDrawer(),
          child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  padding: const EdgeInsets.all(24.0),
                  margin: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        AppBarHeader(),
                        SizedBox(
                          width: 12,
                        ),
                        SelectableText(
                          Strings.matthew,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        SelectableText(
                          Strings.sehorn,
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ),
                AppMenuButton(
                  pressedFunc: () => {
                    VRouterData.of(context).push('/'),
                    Scaffold.of(context).openEndDrawer(),
                  },
                  label: Strings.home,
                ),
                AppMenuButton(
                  pressedFunc: () => {
                    VRouterData.of(context).push('/resume'),
                    Scaffold.of(context).openEndDrawer(),
                  },
                  label: Strings.resume,
                ),
                AppMenuButton(
                  pressedFunc: () => {
                    VRouterData.of(context).push('/portfolio'),
                    Scaffold.of(context).openEndDrawer(),
                  },
                  label: Strings.portfolio,
                ),
                AppMenuButton(
                  pressedFunc: () => {
                    VRouterData.of(context).push('/contact'),
                    Scaffold.of(context).openEndDrawer(),
                  },
                  label: Strings.contact,
                ),
                AppMenuButton(
                  pressedFunc: () => {
                    VRouterData.of(context).push('/about'),
                    Scaffold.of(context).openEndDrawer(),
                  },
                  label: Strings.about,
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: ListTile(
                    hoverColor: Theme.of(context).primaryColor.withOpacity(.24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    title: Text(
                      Strings.linkedIn,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    onTap: () => {
                      VRouterData.of(context).pushExternal(
                        'https://www.linkedin.com/in/matthewsehorn/',
                        openNewTab: true,
                      ),
                      Scaffold.of(context).openEndDrawer(),
                    },
                    trailing: Icon(
                      Typicons.linkedin_circled,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
