import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/image_placeholder.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_email.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_linkedin.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_location.dart';

class ContactViewMobile extends StatelessWidget {
  const ContactViewMobile({Key key}) : super(key: key);

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
        Container(
          constraints: BoxConstraints(
            maxWidth: 360,
          ),
          margin: EdgeInsets.only(
            top: 30,
          ),
          child: ImageWidgetPlaceholder(
            image: AssetImage('assets/images/contact_page_header.png'),
            placeholder: SizedBox(
              width: 360,
              height: 360,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: Card(
              margin: EdgeInsets.all(0),
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
