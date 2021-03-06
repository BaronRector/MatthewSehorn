import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/appbar.dart';
import 'package:matthew_sehorn/common_widgets/appbar_drawer.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';
import 'package:matthew_sehorn/services/theme_switch_service.dart';
import 'package:matthew_sehorn/theme/app_theme.dart';
import 'package:matthew_sehorn/views/about/about_view.dart';
import 'package:matthew_sehorn/views/contact/contact_view.dart';
import 'package:matthew_sehorn/views/portfolio/portfolio_view.dart';
import 'package:matthew_sehorn/views/resume/resume_view.dart';
import 'package:matthew_sehorn/views/home/home_view.dart';
import 'package:vrouter/vrouter.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final globalSaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final appThemeState = useProvider(appThemeStateNotifier);

    return Container(
      child: VRouter(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: appThemeState.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        routes: [
          VStacked(
            key: ValueKey('MyScaffold'),
            widget: MyScaffold(),
            subroutes: [
              VChild(
                path: '/',
                name: 'home',
                widget: Home(),
              ),
              VChild(
                path: '/resume',
                name: 'resume',
                widget: Resume(),
              ),
              VChild(
                path: '/portfolio',
                name: 'portfolio',
                widget: Portfolio(),
              ),
              VChild(
                path: '/contact',
                name: 'contact',
                widget: Contact(),
              ),
              VChild(
                path: '/about',
                name: 'about',
                widget: About(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer(
        builder: (_, watch, child) {
          final isDesktop = watch(isDesktopProvider).value;
          return Scaffold(
            key: globalSaffoldKey,
            appBar: isDesktop ? null : MyAppBar(),
            drawer: isDesktop ? null : AppBarDrawer(),
            backgroundColor: isDesktop ? Theme.of(context).primaryColor : null,
            body: Container(
              decoration: BoxDecoration(
                image: isDesktop
                    ? DecorationImage(
                        image: AssetImage('assets/images/main_bg.png'),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: Stack(
                children: [
                  VRouteElementData.of(context).vChild,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
