import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/site_button.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_email.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_location.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_form_full.dart';

class ContactViewFull extends StatelessWidget {
  const ContactViewFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
            margin: EdgeInsets.all(
              30,
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
                    margin: EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ContactCardHeaderEmail(),
                        SizedBox(
                          width: 24,
                        ),
                        ContactCardHeaderLocation(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  ContactFormFull(),
                  Container(
                    margin: EdgeInsets.only(bottom: 24, right: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SiteButton(
                          highlight: false,
                          pressedFunc: () => {},
                          label: 'Send Message',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
