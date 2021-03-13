import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/view_container_full.dart';
import 'package:matthew_sehorn/common_widgets/view_container_mobile.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';

class ViewContainer extends StatelessWidget {
  final Widget childFull;
  final Widget childMobile;

  const ViewContainer({
    Key key,
    @required this.childFull,
    @required this.childMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => {
        context.read(isDesktopProvider).calculateDeskTop(context),
      },
    );

    return Consumer(
      builder: (context, watch, _) {
        return LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 960) {
              return ViewContainerFull(
                child: childFull,
              );
            } else {
              return Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: ViewContainerMobile(
                  child: childMobile,
                ),
              );
            }
          },
        );
      },
    );
  }
}
