import 'dart:ui';

Color getHexColorByColorCode(String colorCode, {double opacity = 1.0}) {
  // #で始まるカラーコードをRGBに変換
  var color = colorCode.replaceAll('#', '');
  var r = int.parse(color.substring(0, 2), radix: 16);
  var g = int.parse(color.substring(2, 4), radix: 16);
  var b = int.parse(color.substring(4, 6), radix: 16);

  return Color.fromRGBO(r, g, b, opacity);
}
