import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/views/home/home_view_full.dart';
import 'package:matthew_sehorn/views/home/home_view_mobile.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewContainer(
      childFull: HomeViewFull(),
      childMobile: HomeViewMobile(),
    );
  }
}
