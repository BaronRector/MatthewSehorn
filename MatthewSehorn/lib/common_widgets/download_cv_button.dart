import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:vrouter/vrouter.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.resolveWith(
            (states) {
              return Size(
                160,
                52,
              );
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
                return Theme.of(context).primaryTextTheme.button.color;
              }
              return Theme.of(context).textTheme.button.color;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
                return Theme.of(context).primaryTextTheme.button;
              }
              return Theme.of(context).textTheme.button;
            },
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) {
              return RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(36),
              );
            },
          ),
          elevation: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
                return 8;
              }
              return 8;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
                return Theme.of(context).primaryColor;
              }
              return Theme.of(context).canvasColor;
            },
          ),
        ),
        onPressed: () => VRouterData.of(context).push('/resume'),
        child: Container(
          child: Text(
            Strings.downloadCV,
          ),
        ),
      ),
    );
  }
}
