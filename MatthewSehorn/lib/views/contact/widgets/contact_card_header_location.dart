import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class ContactCardHeaderLocation extends StatelessWidget {
  const ContactCardHeaderLocation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Typicons.location,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            Strings.locationTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 4,
          ),
          SelectableText(
            Strings.locationAddress,
            style: Theme.of(context).textTheme.bodyText1.copyWith(color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
