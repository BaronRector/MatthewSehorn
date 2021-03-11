import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:vrouter/vrouter.dart';

class ContactCardHeaderLinkedIn extends StatelessWidget {
  const ContactCardHeaderLinkedIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Typicons.linkedin,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            Strings.linkedIn,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 4,
          ),
          TextButton(
            child: Text(
              Strings.homeFullName,
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Theme.of(context).primaryColor),
            ),
            onPressed: () => {
              VRouterData.of(context).pushExternal(
                'https://www.linkedin.com/in/matthewsehorn/',
                openNewTab: true,
              ),
            },
          ),
        ],
      ),
    );
  }
}
