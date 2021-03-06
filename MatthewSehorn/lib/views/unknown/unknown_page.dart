import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({
    Key key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('Not Found -- 404'),
        ),
      ),
    );
  }
}
