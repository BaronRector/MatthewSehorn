import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/home/widgets/home_accent_image.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 16,
            left: 24,
            right: 24,
          ),
          child: HomeAccentImage(),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 48,
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
              // SizedBox(
              //   height: 36,
              // ),
              // DownloadCVButton(),
            ],
          ),
        )
      ],
    );
  }
}
