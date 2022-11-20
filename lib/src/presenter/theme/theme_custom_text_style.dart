import 'package:flutter/material.dart';

class ThemeCustomTextStyle extends ThemeExtension<ThemeCustomTextStyle> {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle text;
  final TextStyle textAccent;
  final TextStyle textSmall;
  final TextStyle textMiddle;

  const ThemeCustomTextStyle({
    required this.h1,
    required this.h2,
    required this.text,
    required this.textAccent,
    required this.textSmall,
    required this.textMiddle,
  });

  @override
  ThemeExtension<ThemeCustomTextStyle> copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? text,
    TextStyle? textAccent,
    TextStyle? label,
    TextStyle? labelAccent,
  }) {
    return ThemeCustomTextStyle(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      text: text ?? this.text,
      textAccent: textAccent ?? this.textAccent,
      textSmall: label ?? this.textSmall,
      textMiddle: labelAccent ?? this.textMiddle,
    );
  }

  @override
  ThemeExtension<ThemeCustomTextStyle> lerp(
      ThemeExtension<ThemeCustomTextStyle>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }

  static const light = ThemeCustomTextStyle(
    h1: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.w800,
      color: Colors.black87,
      //fontFamily: ,
      height: 40 / 34,
    ),
    h2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
      //fontFamily: ,
      height: 28 / 24,
    ),
    text: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      //fontFamily: ,
      height: 24 / 20,
    ),
    textAccent: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      //fontFamily: ,
      height: 24 / 20,
    ),
    textMiddle: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      //fontFamily: ,
      height: 18 / 14,
    ),
    textSmall: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      //fontFamily: ,
      height: 14 / 10,
    ),
  );

  static const dark = light;
}
