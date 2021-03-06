import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';

class AppBarHeader extends StatelessWidget {
  const AppBarHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final isDesktop = watch(isDesktopProvider).value;
        return Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 12,
              ),
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Text(
                  Strings.firstInitial,
                  style: Theme.of(context).primaryTextTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            if (isDesktop)
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 4),
                    child: SelectableText(
                      Strings.matthew,
                      style: isDesktop
                          ? Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.bold,
                              )
                          : Theme.of(context).textTheme.headline6.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                  SelectableText(
                    Strings.sehorn,
                    style: isDesktop ? Theme.of(context).textTheme.headline5 : Theme.of(context).textTheme.headline6,
                  ),
                ],
              )
          ],
        );
      },
    );
  }
}
