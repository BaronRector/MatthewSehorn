import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/views/contact/contact_view_full.dart';
import 'package:matthew_sehorn/views/contact/contact_view_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewContainer(
      childFull: ContactViewFull(),
      childMobile: ContactViewMobile(),
    );
  }
}
