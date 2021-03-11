import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_email.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_linkedin.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_location.dart';

class ContactViewMobile extends StatelessWidget {
  const ContactViewMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 12,
              ),
              child: SelectableText(
                Strings.contact,
                style: Theme.of(context).primaryTextTheme.headline1.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 56,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 30,
          ),
          child: Image(
            image: AssetImage('assets/images/undraw_profile_6l1l.png'),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Card(
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 24,
                    bottom: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ContactCardHeaderEmail(),
                      SizedBox(
                        height: 24,
                      ),
                      ContactCardHeaderLinkedIn(),
                      SizedBox(
                        height: 24,
                      ),
                      ContactCardHeaderLocation(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
