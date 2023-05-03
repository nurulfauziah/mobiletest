import 'package:flutter/material.dart';

class ScreenUtil {
  static final ScreenUtil _singleton = ScreenUtil._internal();

  factory ScreenUtil() => _singleton;

  ScreenUtil._internal();

  Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  EdgeInsets screenPadding(BuildContext context) {
    return MediaQuery.of(context).padding;
  }

  double widthDefault(BuildContext context) {
    return screenSize(context).width;
  }

  double heightDefault(BuildContext context) {
    return screenSize(context).height;
  }
}
