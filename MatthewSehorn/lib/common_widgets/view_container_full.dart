import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/menubar.dart';
import 'package:matthew_sehorn/common_widgets/site_footer_full.dart';

class ViewContainerFull extends StatelessWidget {
  final Widget child;

  const ViewContainerFull({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      40,
                    ),
                  ),
                  elevation: 30,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 1320,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        40,
                      ),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Column(
                      children: [
                        MenuBar(),
                        child,
                        SiteFooterFull(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
