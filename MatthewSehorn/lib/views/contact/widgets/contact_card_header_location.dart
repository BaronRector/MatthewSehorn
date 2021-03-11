import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:matthew_sehorn/constants/strings.dart';

import 'package:url_launcher/url_launcher.dart';

const _url = 'https://www.google.com/maps/place/Akron,+OH/@41.0844752,-81.5830176,12z/data=!3m1!4b1!4m5!3m4!1s0x8830d7958b2efab7:0x29c96c95fd266d04!8m2!3d41.0814447!4d-81.5190053';

void _launchURL() async => await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

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
          TextButton(
            child: Text(
              Strings.locationAddress,
              style: Theme.of(context).textTheme.bodyText1.copyWith(color: Theme.of(context).primaryColor),
            ),
            onPressed: () => _launchURL(),
          ),
        ],
      ),
    );
  }
}
