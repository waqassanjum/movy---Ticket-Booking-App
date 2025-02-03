import 'package:flutter/material.dart';

class TDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double height;
  final double horizontalPadding;

  const TDivider({
    super.key,
    this.color = Colors.grey,
    this.thickness = 6.0, // Slightly reduced for better balance
    this.height = 80, // Reduced from 130 to 80 but still keeping a nice curve
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
    path.moveTo(0, size.height * 0.7); // Start lower
    path.quadraticBezierTo(
      size.width * 0.5,
      -size.height * 0.3, // More curve but not too high
      size.width,
      size.height * 0.7, // End lower
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
