import 'package:flutter/material.dart';

class ResumeCardLabel extends StatelessWidget {
  final String label;

  const ResumeCardLabel({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chip(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(36),
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: Theme.of(context).textTheme.headline1.color,
              ),
        ),
      ),
    );
  }
}
