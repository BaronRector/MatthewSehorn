import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class ContactViewFull extends StatelessWidget {
  const ContactViewFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 36,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor.withOpacity(.48),
            border: Border(
              top: BorderSide(
                width: 2,
                color: Theme.of(context).canvasColor,
              ),
              bottom: BorderSide(
                width: 2,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 0,
                  ),
                  child: SelectableText(
                    Strings.contactSubTitle,
                    style: Theme.of(context).primaryTextTheme.headline6.copyWith(color: Theme.of(context).textTheme.headline6.color.withOpacity(.75)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 36,
                  ),
                  child: SelectableText(
                    Strings.contact,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Center(
            child: Text(
              Strings.comingSoon,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ),
      ],
    );
  }
}
