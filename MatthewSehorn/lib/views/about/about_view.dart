import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/views/about/about_view_full.dart';
import 'package:matthew_sehorn/views/about/about_view_mobile.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewContainer(
      childFull: AboutViewFull(),
      childMobile: AboutViewMobile(),
    );
  }
}
