import 'package:flutter/material.dart';
import 'package:matthew_sehorn/common_widgets/site_footer_mobile.dart';
import 'dart:html' as html;

class ViewContainerMobile extends StatefulWidget {
  final Widget child;

  const ViewContainerMobile({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _ViewContainerMobileState createState() => _ViewContainerMobileState();
}

class _ViewContainerMobileState extends State<ViewContainerMobile> {
  var top = 120.0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (v) {
        if (v is ScrollUpdateNotification) {
          setState(() {
            top -= v.scrollDelta / 1.5;
          });
        }

        return true;
      },
      child: Stack(
        children: [
          CustomPaint(
            painter: ShapesPainter(
              backgroundColor: Theme.of(context).primaryColor,
            ),
            child: Container(
              height: top < 0 ? 0 : top,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async => {
                      html.window.location.reload(),
                    },
                    child: CustomScrollView(
                      slivers: [
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Container(
                            height: double.infinity,
                            margin: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                            child: widget.child,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SiteFooterMobile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

const double _kCurveHeight = 24;

class ShapesPainter extends CustomPainter {
  Color backgroundColor;

  ShapesPainter({@required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = backgroundColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
