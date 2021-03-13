import 'package:flutter/material.dart';
import 'package:matthew_sehorn/constants/strings.dart';
import 'package:matthew_sehorn/views/resume/widgets/resume_card.dart';

class ResumeViewMobile extends StatelessWidget {
  const ResumeViewMobile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: 12,
              ),
              child: SelectableText(
                Strings.experience,
                style: Theme.of(context).primaryTextTheme.headline1.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
              ),
            ),
            SelectableText(
              Strings.resumeSubTitle,
              style: Theme.of(context).primaryTextTheme.headline6.copyWith(color: Theme.of(context).primaryTextTheme.headline6.color.withOpacity(.75)),
            ),
          ],
        ),
        SizedBox(
          height: 56,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: ResumeCard(
            yearRangeText: '2015 - Current',
            nameText: 'AmTrust Financial',
            titleText: 'Software Engineer',
            summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: ResumeCard(
            yearRangeText: '2014 - 2015',
            nameText: 'TriMark SS Kemp',
            titleText: 'IT Manager, Programmer',
            summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: ResumeCard(
            yearRangeText: '2010 - 2014',
            nameText: 'DermaMed Coatings Company LLC',
            titleText: 'Systems Administrator, Programmer',
            summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 12,
          ),
          child: ResumeCard(
            yearRangeText: '2007 - 2010',
            nameText: 'National Enterprise Systems (NES)',
            titleText: 'File Transmissions, Programmer',
            summaryText: 'Duis posuere, quam non imperdiet egestas, eros enim mattis mauris, in posuere lacus arcu quis felis. Etiam interdum erat non enim venenatis fermentum.',
          ),
        ),
      ],
    );
  }
}
