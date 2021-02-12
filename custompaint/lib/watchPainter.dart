import 'dart:math';

import 'package:flutter/material.dart';

class WatchPainter extends CustomPainter {
  final TextPainter textPainter;
  final Color primaryColor;

  WatchPainter()
      : textPainter = TextPainter(
          textDirection: TextDirection.ltr,
        ),
        primaryColor = Color(0xFFE57242);

  @override
  void paint(Canvas canvas, Size size) {
    renderText(canvas, size);
  }

  renderText(Canvas canvas, Size size) {
    canvas.save();
    final xCenter = size.width / 2;
    final yCenter = size.height / 2;

    final angle = (2 * pi) / 12;
    final vertLength = yCenter / cos(angle);
    final horitLength = xCenter / sin(angle * 2);

    final lengthList = [
      yCenter,
      vertLength,
      horitLength,
      xCenter,
      horitLength,
      vertLength,
      yCenter
    ];

    for (int i = 0; i < 12; i++) {
      canvas.save();

      canvas.translate(0.0, lengthList[i % 6]);

      final display = i == 0 ? '12' : i.toString();

      textPainter.text = TextSpan(
        text: display,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
        ),
      );

      textPainter.layout();
      textPainter.paint(canvas, Offset(0.0,0.0));
    }

    canvas.save();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
