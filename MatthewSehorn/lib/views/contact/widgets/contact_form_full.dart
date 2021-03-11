import 'package:flutter/material.dart';
import 'package:matthew_sehorn/services/contact_form_service.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_form_contact_info.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_form_message.dart';

class ContactFormFull extends StatelessWidget {
  const ContactFormFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: contactFormKey,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 24,
                left: 24,
                right: 12,
              ),
              child: ContactFormContactInfo(),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(
                bottom: 24,
                left: 12,
                right: 24,
              ),
              child: ContactFormMessage(),
            ),
          ),
        ],
      ),
    );
  }
}
