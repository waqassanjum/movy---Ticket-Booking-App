import 'package:flutter/material.dart';

class TDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double height;
  final double horizontalPadding;

  const TDivider({
    super.key,
    this.color = Colors.grey,
    this.thickness = 8.0,
    this.height = 130.0,
    this.horizontalPadding = 35.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: CustomPaint(
        size: Size(double.infinity, height),
        painter: _CurvedDividerPainter(color: color, thickness: thickness),
      ),
    );
  }
}

class _CurvedDividerPainter extends CustomPainter {
  final Color color;
  final double thickness;

  _CurvedDividerPainter({required this.color, required this.thickness});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(
      size.width * 0.5,
      0,
      size.width,
      size.height * 0.5,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
