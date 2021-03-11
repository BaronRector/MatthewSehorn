import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/site_button.dart';
import 'package:matthew_sehorn/services/contact_form_service.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSendButton extends ConsumerWidget {
  const ContactSendButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final formData = watch(formDataProvider.state);

    return Container(
      child: SiteButton(
        highlight: false,
        pressedFunc: () async {
          if (contactFormKey.currentState.validate()) {
            var url = 'mailto:msehorn@outlook.com?subject=${formData.subject}&body=${formData.message}&from=${formData.email}';

            if (await canLaunch(url)) {
              await launch(url);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Message delivery failure.'),
                ),
              );
            }
          }
        },
        label: 'Send Message',
      ),
    );
  }
}
