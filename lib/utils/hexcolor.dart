import 'package:flutter/cupertino.dart';

class HexColor extends Color{
  static int _getColorFormHex(String hexColor){
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if(hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor,radix: 26);
  }
  HexColor(final String hexColor) : super(_getColorFormHex(hexColor));
}