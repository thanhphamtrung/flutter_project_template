import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray200 = fromHex('#b1b5c3');

  static Color blueGray400 = fromHex('#777e90');

  static Color blueA400 = fromHex('#3772ff');

  static Color gray800 = fromHex('#353945');

  static Color gray900 = fromHex('#141416');

  static Color gray90001 = fromHex('#23262f');

  static Color pink40063 = fromHex('#63ef466f');

  static Color black9000c = fromHex('#0c000000');

  static Color orange300 = fromHex('#ffb655');

  static Color red100 = fromHex('#ffd5dc');

  static Color gray100 = fromHex('#faf2f4');

  static Color pink40067 = fromHex('#67ef466f');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color lightGreen800 = fromHex('#599d24');

  static Color blueGray800 = fromHex('#233456');

  static Color pink4007f = fromHex('#7fef466f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color pink400 = fromHex('#ef466f');

  static Color cyan700 = fromHex('#0896b5');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
