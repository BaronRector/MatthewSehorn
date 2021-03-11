import 'package:flutter/material.dart';
import 'package:matthew_sehorn/services/contact_form_service.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_form_contact_info.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_form_message.dart';
import 'package:matthew_sehorn/views/contact/widgets/contact_send_button.dart';

class ContactFormMobile extends StatelessWidget {
  const ContactFormMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: contactFormKey,
        child: Column(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  margin: EdgeInsets.all(
                    24,
                  ),
                  child: ContactFormContactInfo(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: ContactFormMessage(),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ContactSendButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
