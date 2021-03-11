import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/services/contact_form_service.dart';

class ContactFormMessage extends ConsumerWidget {
  const ContactFormMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final formData = watch(formDataProvider.state);
    return Container(
      child: Container(
        height: 210,
        child: TextFormField(
          initialValue: formData.message,
          validator: (message) {
            if (formData.message.isEmpty) {
              return 'A message is required.';
            }
            return null;
          },
          onChanged: (value) => {
            context.read(formDataProvider).updateMessage(value),
          },
          textAlignVertical: TextAlignVertical.top,
          expands: true,
          minLines: null,
          maxLines: null,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: Strings.messageHint,
          ),
        ),
      ),
    );
  }
}
