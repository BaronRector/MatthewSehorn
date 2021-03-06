import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class SiteFooterMobile extends StatelessWidget {
  const SiteFooterMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: Border(
          top: BorderSide(
            width: 2,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 36,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SelectableText(
                  Strings.allRights,
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
