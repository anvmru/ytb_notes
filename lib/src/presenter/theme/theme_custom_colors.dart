import 'package:flutter/material.dart';

class ThemeCustomColors extends ThemeExtension<ThemeCustomColors> {
  const ThemeCustomColors({
    required this.blackText,
    required this.greyText,
    required this.white,
    required this.blue,
    required this.grey,
    required this.greyLight,
    required this.green,
    required this.blackAccent,
    required this.blueAccent,
    required this.redSystem,
    required this.greenSystem,
  });

  final Color blackText;
  final Color greyText;
  final Color white;
  final Color blue;
  final Color grey;
  final Color greyLight;
  final Color green;
  final Color blackAccent;
  final Color blueAccent;
  final Color redSystem;
  final Color greenSystem;

  @override
  ThemeCustomColors copyWith({
    Color? blackText,
    Color? greyText,
    Color? white,
    Color? blue,
    Color? grey,
    Color? greyLight,
    Color? green,
    Color? blackAccent,
    Color? blueAccent,
    Color? redSystem,
    Color? greenSystem,
  }) {
    return ThemeCustomColors(
      blackText: blackText ?? this.blackText,
      greyText: greyText ?? this.greyText,
      white: white ?? this.white,
      blue: blue ?? this.blue,
      grey: grey ?? this.grey,
      greyLight: greyLight ?? this.greyLight,
      green: green ?? this.green,
      blackAccent: blackAccent ?? this.blackAccent,
      blueAccent: blueAccent ?? this.blueAccent,
      redSystem: redSystem ?? this.redSystem,
      greenSystem: greenSystem ?? this.greenSystem,
    );
  }

  @override
  ThemeCustomColors lerp(ThemeExtension<ThemeCustomColors>? other, double t) {
    if (other is! ThemeCustomColors) {
      return this;
    }
    return ThemeCustomColors(
      blackText: Color.lerp(blackText, other.blackText, t)!,
      greyText: Color.lerp(greyText, other.greyText, t)!,
      white: Color.lerp(white, other.white, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      greyLight: Color.lerp(greyLight, other.greyLight, t)!,
      green: Color.lerp(green, other.green, t)!,
      blackAccent: Color.lerp(blackAccent, other.blackAccent, t)!,
      blueAccent: Color.lerp(blueAccent, other.blueAccent, t)!,
      redSystem: Color.lerp(redSystem, other.redSystem, t)!,
      greenSystem: Color.lerp(greenSystem, other.greenSystem, t)!,
    );
  }

  static const light = ThemeCustomColors(
    blackText: Colors.black,
    greyText: Colors.grey,
    white: Colors.white,
    blue: Colors.blue,
    grey: Colors.grey,
    greyLight: Colors.grey,
    green: Colors.green,
    blackAccent: Colors.black,
    blueAccent: Colors.blueAccent,
    redSystem: Colors.red,
    greenSystem: Colors.greenAccent,
  );

  static const dark = light;
}
