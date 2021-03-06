import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:vrouter/vrouter.dart';

class SiteFooterFull extends StatelessWidget {
  const SiteFooterFull({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 2,
            color: Theme.of(context).canvasColor,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 36,
      ),
      child: Row(
        children: [
          Flexible(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    right: 24,
                  ),
                  child: OutlinedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          if (states.contains(MaterialState.hovered) || states.contains(MaterialState.pressed)) {
                            return Theme.of(context).primaryTextTheme.button.color;
                          }
                          return Theme.of(context).textTheme.subtitle1.color;
                        },
                      ),
                      textStyle: MaterialStateProperty.resolveWith(
                        (states) {
                          return Theme.of(context).textTheme.subtitle1;
                        },
                      ),
                      shape: MaterialStateProperty.resolveWith(
                        (states) {
                          return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(36),
                          );
                        },
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Theme.of(context).primaryColor;
                          }
                          return Theme.of(context).canvasColor;
                        },
                      ),
                    ),
                    onPressed: () => {
                      VRouterData.of(context).pushExternal(
                        'https://www.linkedin.com/in/matthewsehorn/',
                        openNewTab: true,
                      ),
                    },
                    child: Container(
                      child: Text(
                        Strings.linkedIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: SelectableText(
              Strings.allRights,
              style: Theme.of(context).textTheme.subtitle2.copyWith(
                    fontWeight: FontWeight.w300,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
