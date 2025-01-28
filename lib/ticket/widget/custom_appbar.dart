import 'package:flutter/material.dart';

class CustomAppBarClipper extends CustomClipper<Path> {
  final double leftHeightFactor;
  final double rightHeightFactor;

  CustomAppBarClipper(this.leftHeightFactor, this.rightHeightFactor);

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);

    path.lineTo(0, size.height * leftHeightFactor);

    path.lineTo(size.width, size.height * rightHeightFactor);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
