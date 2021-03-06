import 'package:flutter/material.dart';

class HomeAccentImage extends StatelessWidget {
  const HomeAccentImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.only(
          bottom: 48,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        elevation: 16,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          margin: EdgeInsets.all(
            16,
          ),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: 320,
              maxWidth: 800,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image(
                image: AssetImage(
                  'assets/images/home_accent_image.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
