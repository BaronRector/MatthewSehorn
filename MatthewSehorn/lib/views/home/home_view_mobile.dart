import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/home/widgets/home_accent_image.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          child: HomeAccentImage(),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 36,
          ),
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.fitWidth,
                child: SelectableText(
                  Strings.homeDesciption,
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SelectableText(
                Strings.homeIntro,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
