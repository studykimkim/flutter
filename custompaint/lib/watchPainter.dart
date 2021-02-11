import 'package:flutter/material.dart';

class WatchPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final xCenter = size.width / 2;
    final yCenter = size.height / 2;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}