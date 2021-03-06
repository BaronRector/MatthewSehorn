import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/services/responsive_service.dart';
import 'package:matthew_sehorn/services/selected_view_service.dart';

class AppMenuButton extends StatelessWidget {
  final String label;
  final Function pressedFunc;

  const AppMenuButton({
    Key key,
    @required this.pressedFunc,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        final isDesktop = watch(isDesktopProvider).value;
        final selected = watch(selectedViewProvider).value == label;

        return isDesktop
            ? ElevatedButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.hovered) || selected) {
                        return Theme.of(context).primaryTextTheme.button.color;
                      }
                      return Theme.of(context).textTheme.button.color;
                    },
                  ),
                  textStyle: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.hovered) || selected) {
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
                      if (states.contains(MaterialState.hovered) || selected) {
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
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: selected ? Theme.of(context).scaffoldBackgroundColor : null,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: ListTile(
                  hoverColor: Theme.of(context).primaryColor.withOpacity(.24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  title: Text(
                    label,
                    style: selected
                        ? Theme.of(context).textTheme.button.copyWith(
                              fontWeight: FontWeight.w600,
                            )
                        : Theme.of(context).textTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                  ),
                  onTap: (pressedFunc),
                  trailing: selected
                      ? Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      : null,
                ),
              );
      },
    );
  }
}
