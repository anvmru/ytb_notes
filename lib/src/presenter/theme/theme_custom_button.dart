import 'package:flutter/material.dart';

/// Тема для кнопок
class ThemeCustomButton extends ThemeExtension<ThemeCustomButton> {
  const ThemeCustomButton({
    required this.height,
    required this.sizeIcon,
    required this.padding,
    required this.radius,
    required this.duration,
    required this.defaultShadow,
    required this.pressShadow,
    required this.paddingIcon,
    required this.sizeScale,
  });

  final double height;
  final double sizeIcon;
  final EdgeInsetsGeometry padding;
  final double radius;
  final Duration duration;
  final double paddingIcon;
  final double sizeScale;

  final BoxShadow defaultShadow;
  final BoxShadow pressShadow;

  @override
  ThemeExtension<ThemeCustomButton> copyWith({
    double? height,
    double? sizeIcon,
    EdgeInsetsGeometry? padding,
    double? radius,
    Duration? duration,
    BoxShadow? defaultShadow,
    BoxShadow? pressShadow,
    double? paddingIcon,
    double? sizeScale,
  }) {
    return ThemeCustomButton(
      height: height ?? this.height,
      sizeIcon: sizeIcon ?? this.sizeIcon,
      padding: padding ?? this.padding,
      radius: radius ?? this.radius,
      duration: duration ?? this.duration,
      defaultShadow: defaultShadow ?? this.defaultShadow,
      pressShadow: pressShadow ?? this.pressShadow,
      paddingIcon: paddingIcon ?? this.paddingIcon,
      sizeScale: sizeScale ?? this.sizeScale,
    );
  }

  @override
  ThemeExtension<ThemeCustomButton> lerp(
      ThemeExtension<ThemeCustomButton>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }

  /// Тема кнопок для "света"
  static const light = ThemeCustomButton(
    height: 40.0,
    sizeIcon: 25.0,
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    radius: 12.0,
    duration: Duration(milliseconds: 300),
    defaultShadow: BoxShadow(
      color: Colors.black26,
      offset: Offset(12.0, 12.0),
      blurRadius: 20.0,
      spreadRadius: -10.0,
    ),
    pressShadow: BoxShadow(
      color: Colors.black38,
      offset: Offset(4.0, 4.0),
      blurRadius: 8.0,
      spreadRadius: -10.0,
    ),
    paddingIcon: 16.0,
    sizeScale: 0.90,
  );

  static const dark = light;
}
