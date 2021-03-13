import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/image_placeholder.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';

class HomeAccentImage extends ConsumerWidget {
  const HomeAccentImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isDesktop = watch(isDesktopProvider).value;

    return Container(
      constraints: BoxConstraints(
        maxHeight: isDesktop ? double.infinity : 360,
        maxWidth: isDesktop ? 480 : double.infinity,
      ),
      child: ImageWidgetPlaceholder(
        image: AssetImage('assets/images/home_accent_image.png'),
        placeholder: SizedBox(
          width: isDesktop ? 480 : 360,
          height: isDesktop ? 480 : 360,
        ),
      ),
    );
  }
}
