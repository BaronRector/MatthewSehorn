import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/services/selected_view_service.dart';
import 'package:matthew_sehorn/views/contact/contact_view_full.dart';
import 'package:matthew_sehorn/views/contact/contact_view_mobile.dart';

class Contact extends HookWidget {
  const Contact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => {
        context.read(selectedViewProvider).setSelectedView(Strings.contact),
      },
    );

    return ViewContainer(
      childFull: ContactViewFull(),
      childMobile: ContactViewMobile(),
    );
  }
}
