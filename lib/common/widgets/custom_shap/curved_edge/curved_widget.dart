import 'package:flutter/material.dart';

class Tcustomervedwidget extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstcurves1 = Offset(0, size.height - 20);
    final lastcurves1 = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstcurves1.dx, firstcurves1.dy, lastcurves1.dx, lastcurves1.dy);

    final firstcurves2 = Offset(0, size.height - 20);
    final lastcurves2 = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(
        firstcurves2.dx, firstcurves2.dy, lastcurves2.dx, lastcurves2.dy);

    final firstcurves3 = Offset(size.width, size.height - 20);
    final lastcurves3 = Offset(size.width, size.height);

    path.quadraticBezierTo(
        firstcurves3.dx, firstcurves3.dy, lastcurves3.dx, lastcurves3.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
    return true;
  }
}
