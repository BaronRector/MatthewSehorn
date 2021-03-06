import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/home/widgets/home_accent_image.dart';

class HomeViewFull extends StatelessWidget {
  const HomeViewFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 54,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: SelectableText(
                                Strings.homeDesciption,
                                textAlign: TextAlign.left,
                                style: Theme.of(context).textTheme.headline1.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            child: SelectableText(
                              Strings.homeIntro,
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText2.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 28,
                      // ),
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: DownloadCVButton(),
                      // )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 36,
                  ),
                  child: HomeAccentImage(),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
