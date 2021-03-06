import 'package:flutter/material.dart';
import 'package:matthew_sehorn/views/resume/widgets/resume_card_label.dart';

class ResumeCard extends StatelessWidget {
  final String nameText;
  final String titleText;
  final String summaryText;
  final String yearRangeText;

  const ResumeCard({
    Key key,
    @required this.nameText,
    @required this.titleText,
    @required this.summaryText,
    @required this.yearRangeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Card(
            margin: EdgeInsets.only(
              top: 16,
            ),
            elevation: 16,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 36,
                      ),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: SelectableText(
                          this.nameText,
                          style: Theme.of(context).textTheme.subtitle2.copyWith(
                                height: 0,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 16,
                      ),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: SelectableText(
                          this.titleText,
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 24,
                      ),
                      child: SelectableText(
                        this.summaryText,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 4,
            ),
            child: ResumeCardLabel(
              label: this.yearRangeText,
            ),
          ),
        ],
      ),
    );
  }
}
