import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/view_container.dart';
import 'package:matthew_sehorn/views/resume/resume_view_full.dart';
import 'package:matthew_sehorn/views/resume/resume_view_mobile.dart';

class Resume extends StatelessWidget {
  const Resume({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewContainer(
      childFull: ResumeViewFull(),
      childMobile: ResumeViewMobile(),
    );
  }
}
