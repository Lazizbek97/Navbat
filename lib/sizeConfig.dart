import 'package:flutter/material.dart';
import 'package:minicraft/configs/consts.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double getHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  // 812.0 designer ishlatgan height
  return (inputHeight / AppConstants.screenHeight) * screenHeight;
}

double getWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  // 375.0 designer ishlatgan width
  return (inputWidth / AppConstants.screenWidth) * screenWidth;
}
