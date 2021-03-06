import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/resume/widgets/resume_card.dart';

class ResumeViewFull extends StatelessWidget {
  const ResumeViewFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 36,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor.withOpacity(.48),
            border: Border(
              top: BorderSide(
                width: 2,
                color: Theme.of(context).canvasColor,
              ),
              bottom: BorderSide(
                width: 2,
                color: Theme.of(context).canvasColor,
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 0,
                  ),
                  child: SelectableText(
                    Strings.resumeSubTitle,
                    style: Theme.of(context).primaryTextTheme.headline6.copyWith(color: Theme.of(context).textTheme.headline6.color.withOpacity(.75)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 24,
                    bottom: 36,
                  ),
                  child: SelectableText(
                    Strings.experience,
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 24,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 36,
                    right: 12,
                    top: 16,
                    bottom: 12,
                  ),
                  child: ResumeCard(
                    yearRangeText: '2015 - Current',
                    nameText: 'AmTrust Financial',
                    titleText: 'Software Engineer',
                    summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 12,
                    right: 36,
                    top: 16,
                    bottom: 12,
                  ),
                  child: ResumeCard(
                    yearRangeText: '2014 - 2015',
                    nameText: 'TriMark SS Kemp',
                    titleText: 'IT Manager, Programmer',
                    summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 24,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 36,
                    right: 12,
                    top: 12,
                    bottom: 16,
                  ),
                  child: ResumeCard(
                    yearRangeText: '2010 - 2014',
                    nameText: 'DermaMed Coatings Company LLC',
                    titleText: 'Systems Administrator, Programmer',
                    summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 12,
                    right: 36,
                    top: 12,
                    bottom: 16,
                  ),
                  child: ResumeCard(
                    yearRangeText: '2007 - 2010',
                    nameText: 'National Enterprise Systems (NES)',
                    titleText: 'File Transmissions, Programmer',
                    summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
