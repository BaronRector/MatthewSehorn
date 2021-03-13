import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/image_placeholder.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_email.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_linkedin.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_card_header_location.dart';

class ContactViewFull extends StatelessWidget {
  const ContactViewFull({Key key}) : super(key: key);

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(
                    24,
                  ),
                  child: Card(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 112,
                      ),
                      child: Column(
                        children: [
                          ContactCardHeaderEmail(),
                          SizedBox(
                            height: 36,
                          ),
                          ContactCardHeaderLinkedIn(),
                          SizedBox(
                            height: 36,
                          ),
                          ContactCardHeaderLocation(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 0,
                ),
                constraints: BoxConstraints(
                  maxHeight: 560,
                ),
                child: ImageWidgetPlaceholder(
                  image: AssetImage('assets/images/contact_page_header.png'),
                  placeholder: SizedBox(
                    width: 560,
                    height: 560,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
