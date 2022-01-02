import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';

class RectSliderComponentShape extends SliderComponentShape {
  late final Picture slider;

  RectSliderComponentShape() {
    final paint_ = Paint()
      ..strokeWidth = 50
      ..color = const Color(0xFF006393)
      ..style = PaintingStyle.fill;

    const t = 2.7;
    final path = Path()
      ..moveTo(17, t * 10 + 2)
      ..relativeLineTo(0, t * 5)
      ..relativeLineTo(t * 5, 0)
      ..relativeLineTo(0, -5 * t)
      ..relativeLineTo(-2.5 * t, -2 * t)
      ..close();

    final slide_ = ui.PictureRecorder();
    Canvas(slide_).drawPath(path, paint_);
    slider = slide_.endRecording();
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
    context.canvas.translate(value * 252, 0);
    context.canvas.drawPicture(slider);
  }
}
