import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

class RectSliderComponentShape extends SliderComponentShape {
  static late ui.Image sliderImage;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(4, 12);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required Animation<double> activationAnimation,
      required Animation<double> enableAnimation,
      required bool isDiscrete,
      required TextPainter labelPainter,
      required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required TextDirection textDirection,
      required double value,
      required double textScaleFactor,
      required Size sizeWithOverflow}) {
    // sliderImage
    context.canvas.scale(0.5, 0.5);
    context.canvas
        .drawImage(sliderImage, Offset(30 + value * 510, 40), Paint());
  }
}

Future<ui.Image> imgImageToUiImage(img.Image image) async {
  ui.ImmutableBuffer buffer = await ui.ImmutableBuffer.fromUint8List(
      image.getBytes(format: img.Format.rgba));
  ui.ImageDescriptor id = ui.ImageDescriptor.raw(buffer,
      height: image.height,
      width: image.width,
      pixelFormat: ui.PixelFormat.rgba8888);
  ui.Codec codec = await id.instantiateCodec(
      targetHeight: image.height, targetWidth: image.width);
  ui.FrameInfo fi = await codec.getNextFrame();
  ui.Image uiImage = fi.image;
  return uiImage;
}
