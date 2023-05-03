import 'package:flutter/material.dart';
import 'package:mobiletest/util/screen_util.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;
  final TextAlign? align;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  final _screen = ScreenUtil();

  CustomText(
      {Key? key,
      this.text,
      this.height,
      this.fontSize,
      this.padding,
      this.color,
      this.align,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.only(
              left: _screen.widthDefault(context) / 40,
              bottom: _screen.heightDefault(context) / 120),
      child: Text(
        text ?? '',
        textAlign: align,
        style: TextStyle(
            height: height ?? 0,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontSize: fontSize ?? 14,
            color: color ?? Colors.black),
      ),
    );
  }
}
