import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/appbar.dart';
import 'package:matthew_sehorn/common_widgets/appbar_drawer.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';
import 'package:matthew_sehorn/services/selected_view_service.dart';
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

ScaleTransition scaleTransition(Animation<double> animation, Widget child) {
  final Animation<double> _animation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeOut,
  );

  return ScaleTransition(
    scale: _animation,
    child: child,
  );
}

SlideTransition slideTransition(Animation<double> animation, Widget child) {
  final Animation<double> _animation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeOut,
  );

  return SlideTransition(
    position: Tween(
      begin: Offset(-1.0, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(_animation),
    child: child,
  );
}

FadeTransition fadeTransition(Animation<double> animation, Widget child) {
  final Animation<double> _animation = CurvedAnimation(
    parent: animation,
    curve: Curves.easeOut,
  );

  return FadeTransition(
    opacity: _animation,
    child: child,
  );
}

final globalSaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final appThemeState = watch(appThemeStateNotifier);
    final isDesktop = watch(isDesktopProvider).value;

    return Container(
      child: VRouter(
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: appThemeState.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        reverseTransitionDuration: Duration(
          milliseconds: isDesktop ? 400 : 325,
        ),
        transitionDuration: Duration(
          milliseconds: isDesktop ? 400 : 325,
        ),
        buildTransition: (animation1, animation2, child) {
          return isDesktop ? scaleTransition(animation1, child) : slideTransition(animation1, child);
        },
        routes: [
          VStacked(
            key: ValueKey('MyScaffold'),
            widget: MyScaffold(),
            subroutes: [
              VChild(
                path: '/',
                name: 'home',
                widget: Home(),
                afterEnter: (context, string, _) {
                  return context.read(selectedViewProvider).setSelectedView(Strings.home);
                },
              ),
              VChild(
                path: '/resume',
                name: 'resume',
                widget: Resume(),
                afterEnter: (context, string, _) {
                  return context.read(selectedViewProvider).setSelectedView(Strings.resume);
                },
              ),
              VChild(
                path: '/portfolio',
                name: 'portfolio',
                widget: Portfolio(),
                afterEnter: (context, string, _) {
                  return context.read(selectedViewProvider).setSelectedView(Strings.portfolio);
                },
              ),
              VChild(
                path: '/contact',
                name: 'contact',
                widget: Contact(),
                afterEnter: (context, string, _) {
                  return context.read(selectedViewProvider).setSelectedView(Strings.contact);
                },
              ),
              VChild(
                path: '/about',
                name: 'about',
                widget: About(),
                afterEnter: (context, string, _) {
                  return context.read(selectedViewProvider).setSelectedView(Strings.about);
                },
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
              child: VRouteElementData.of(context).vChild,
            ),
          );
        },
      ),
    );
  }
}
