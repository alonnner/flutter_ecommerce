import 'package:flutter/cupertino.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    //When the control point is on the line between the start point and the end point, the curve is a straight line
    //When the control point deviates from this line, the curve will bend in the direction of the control point
    //In this example, the control point is directly above the starting point, which causes the curve to bend upward at the beginning
    final lastCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final secondfirstCurve = Offset(30, size.height - 20);
    final secondsecondCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondfirstCurve.dx, secondfirstCurve.dy,
        secondsecondCurve.dx, secondsecondCurve.dy);

    final thirdfirstCurve = Offset(size.width, size.height - 20);
    final thirdsecondCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstCurve.dx, thirdfirstCurve.dy,
        thirdsecondCurve.dx, thirdsecondCurve.dy);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
