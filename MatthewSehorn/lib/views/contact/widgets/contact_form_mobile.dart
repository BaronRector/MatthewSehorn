import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/site_button.dart';
import 'package:matthew_sehorn/constants/strings.dart';

class ContactFormMobile extends StatelessWidget {
  const ContactFormMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Container(
                  margin: EdgeInsets.all(
                    24,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          bottom: 24,
                        ),
                        child: TextFormField(
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
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: Strings.emailAddressHint,
                          ),
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: Strings.subjectHint,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Container(
                    height: 210,
                    child: TextFormField(
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
    );
  }
}
