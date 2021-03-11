import 'package:flutter/material.dart';

class HomeAccentImage extends StatelessWidget {
  const HomeAccentImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        // maxHeight: 480,
        maxWidth: 480,
      ),
      child: Image(
        image: AssetImage(
          'assets/images/home_accent_image.png',
        ),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
