import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RectSliderComponentShape extends SliderComponentShape {
  ui.Paint paint_ = Paint();

  RectSliderComponentShape() {
    paint_
      ..strokeWidth = 50
      ..color = Color(0xFF006393)
      ..style = PaintingStyle.fill;
  }

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(4, 12); // ???
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final t = 2.7;
    final path = Path();
    path.moveTo(17 + value * 252, 10 * t + 2);
    path
      ..relativeLineTo(0, 5 * t)
      ..relativeLineTo(5 * t, 0)
      ..relativeLineTo(0, -5 * t)
      ..relativeLineTo(-2.5 * t, -2 * t)
      ..close();
    context.canvas.drawPath(path, paint_);
  }
}
