import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:url_launcher/url_launcher.dart';

const _url = 'mailto:${Strings.emailAddress}';

void _launchURL() async => await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

class ContactCardHeaderEmail extends StatelessWidget {
  const ContactCardHeaderEmail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Icon(
            Typicons.mail,
            size: 34,
            color: Theme.of(context).primaryColor,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            Strings.emailTitle,
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 4,
          ),
          TextButton(
            child: Text(
              Strings.emailAddress,
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Theme.of(context).primaryColor),
            ),
            onPressed: () => _launchURL(),
          ),
        ],
      ),
    );
  }
}
