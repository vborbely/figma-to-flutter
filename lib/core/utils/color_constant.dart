import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900C4 = fromHex('#c4000000');

  static Color gray400 = fromHex('#c4c4c4');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blue200 = fromHex('#8bc4f8');

  static Color black9003f = fromHex('#3f000000');

  static Color purpleA100 = fromHex('#eb61de');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black900Af = fromHex('#af000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
