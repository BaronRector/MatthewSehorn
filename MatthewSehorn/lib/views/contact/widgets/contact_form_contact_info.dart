import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/services/contact_form_service.dart';

class ContactFormContactInfo extends ConsumerWidget {
  const ContactFormContactInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final formData = watch(formDataProvider.state);

    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 24,
            ),
            child: TextFormField(
              initialValue: formData.name,
              validator: (name) {
                if (formData.name.isEmpty) {
                  return 'A name is required.';
                }
                return null;
              },
              onChanged: (value) => {
                context.read(formDataProvider).updateName(value),
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                  ),
                ),
                hintText: Strings.yourName,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 24,
            ),
            child: TextFormField(
              initialValue: formData.email,
              validator: (email) {
                if (formData.email.isEmpty) {
                  return 'An email is required.';
                } else if (!EmailValidator.validate(formData.email)) {
                  return 'A valid email is required';
                }
                return null;
              },
              onChanged: (value) => {
                context.read(formDataProvider).updateEmail(value),
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Strings.emailAddressHint,
              ),
            ),
          ),
          Container(
            child: TextFormField(
              initialValue: formData.subject,
              validator: (subject) {
                if (formData.subject.isEmpty) {
                  return 'A subject is required.';
                }
                return null;
              },
              onChanged: (value) => {
                context.read(formDataProvider).updateSubject(value),
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Strings.subjectHint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
