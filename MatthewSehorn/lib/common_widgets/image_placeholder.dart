import 'package:flutter/material.dart';

class ImageWidgetPlaceholder extends StatelessWidget {
  const ImageWidgetPlaceholder({
    Key key,
    this.image,
    this.placeholder,
    this.imageFit,
  }) : super(key: key);

  final ImageProvider image;
  final Widget placeholder;
  final BoxFit imageFit;

  @override
  Widget build(BuildContext context) {
    return Image(
      fit: imageFit == null ? BoxFit.contain : imageFit,
      image: image,
      frameBuilder: (
        BuildContext context,
        Widget child,
        int frame,
        bool wasSynchronouslyLoaded,
      ) {
        if (wasSynchronouslyLoaded) {
          return child;
        } else {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: frame != null ? child : placeholder,
          );
        }
      },
    );
  }
}
