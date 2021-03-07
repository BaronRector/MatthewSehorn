import 'package:flutter/material.dart';

class SiteButton extends StatelessWidget {
  final String label;
  final Function pressedFunc;
  final bool highlight;

  const SiteButton({
    Key key,
    @required this.pressedFunc,
    @required this.label,
    @required this.highlight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || this.highlight) {
                return Theme.of(context).primaryTextTheme.button.color;
              }
              return Theme.of(context).textTheme.button.color;
            },
          ),
          textStyle: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || this.highlight) {
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
              if (states.contains(MaterialState.hovered)) {
                return 8;
              }
              return 8;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.hovered) || highlight) {
                return Theme.of(context).primaryColor;
              }
              return Theme.of(context).canvasColor;
            },
          ),
        ),
        onPressed: pressedFunc,
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 6,
            vertical: 6,
          ),
          child: Text(
            label,
          ),
        ),
      ),
    );
  }
}
