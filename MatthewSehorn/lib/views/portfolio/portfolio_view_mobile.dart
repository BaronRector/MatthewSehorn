import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class PortfolioViewMobile extends StatelessWidget {
  const PortfolioViewMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 12,
              ),
              child: SelectableText(
                Strings.portfolio,
                style: Theme.of(context).primaryTextTheme.headline1.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Container(
            child: Center(
              child: Text(
                Strings.comingSoon,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
