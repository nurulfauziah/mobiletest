import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:mobiletest/util/screen_util.dart';

class CustomTextFieldForm extends StatelessWidget {
  final _screen = ScreenUtil();

  final TextEditingController? controller;
  // final MoneyMaskedTextController? controllerMaskMoney;
  final String? hintText;
  final String? prefixText;
  final String Function(String?)? validator;
  final Function(String?)? onSaved;
  final bool? isReadOnly;
  final bool? isNumber;
  final bool? isAll;
  final bool? isDense;
  final bool? isObscure;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? minLines;
  final int? maxLines;
  final Color? color;
  final FocusNode? focusNode;

  final List<TextInputFormatter>? formatter;
  final TextInputType? keyboardType;
  final FilteringTextInputFormatter? filteringTextInputFormatter;

  CustomTextFieldForm(
      {super.key,
      this.hintText,
      this.validator,
      this.prefixText,
      this.maxLines,
      this.minLines,
      this.onSaved,
      this.focusNode,
      this.isReadOnly,
      this.suffixIcon,
      this.formatter,
      this.isNumber = false,
      this.isDense = true,
      this.keyboardType,
      this.controller,
      this.isObscure,
      this.filteringTextInputFormatter,
      // this.controllerMaskMoney,
      this.maxLength,
      this.isAll = false,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.white38,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: TextFormField(
        focusNode: focusNode,
        maxLines: maxLines ?? 1,
        minLines: minLines,
        inputFormatters: !isAll!
            ? [
                isNumber == false
                    ? FilteringTextInputFormatter.allow(RegExp('[aA0-zZ9 ]'))
                    : FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ]
            : formatter,
        onChanged: (value) {
          var val = value.replaceAll(RegExp(r'Rp '), '');
          value = val.replaceAll('.', '');
          log(value);
        },
        maxLength: maxLength,
        // controller: controllerMaskMoney ?? controller,
        readOnly: isReadOnly ?? false,
        obscureText: isObscure ?? false,
        textInputAction: TextInputAction.go,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: color ?? Colors.black),
        decoration: InputDecoration(
          hintText: hintText ?? '',
          prefixText: prefixText ?? '',
          suffixIcon: suffixIcon,
          filled: true,
          isDense: isDense,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          // focusedBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(12),
          //   ),
          //   borderSide: BorderSide(
          //     color: Color(0xff9E9E9E),
          //     width: 1,
          //   ),
          // ),
          // focusedErrorBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(12),
          //   ),
          //   borderSide: BorderSide(
          //     color: Color(0xff9E9E9E),
          //     width: 1,
          //   ),
          // ),
          // errorBorder: const OutlineInputBorder(
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(12),
          //   ),
          //   borderSide: BorderSide(
          //     color: Color(0xff9E9E9E),
          //     width: 1,
          //   ),
          // ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: _screen.widthDefault(context) / 24,
              vertical: _screen.heightDefault(context) / 64),
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: keyboardType,
      ),
    );
  }
}
