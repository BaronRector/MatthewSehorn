import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/views/portfolio/portfolio_view_mobile.dart';
import 'package:matthew_sehorn/views/portfolio/portfolio_view_full.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewContainer(
      childFull: PortfolioViewFull(),
      childMobile: PortfolioViewMobile(),
    );
  }
}
