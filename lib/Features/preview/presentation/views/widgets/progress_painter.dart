import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  final double progress;

  ProgressPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    Paint playedPaint = Paint()
      ..color = Colors.red // Color for the played portion
      ..strokeWidth = 6.0 // Set the thickness of the line
      ..strokeCap = StrokeCap.round;

    Paint unplayedPaint = Paint()
      ..color = Colors.white // Color for the unplayed portion
      ..strokeWidth = 6.0 // Set the thickness of the line
      ..strokeCap = StrokeCap.round;

    // Draw the unplayed portion (white line)
    double width = size.width * progress;
    Offset unplayedStart = Offset(width, size.height / 2);
    Offset unplayedEnd = Offset(size.width, size.height / 2);
    canvas.drawLine(unplayedStart, unplayedEnd, unplayedPaint);

    // Draw the played portion (red line)
    Offset playedStart = Offset(0, size.height / 2);
    Offset playedEnd = Offset(width, size.height / 2);
    canvas.drawLine(playedStart, playedEnd, playedPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
