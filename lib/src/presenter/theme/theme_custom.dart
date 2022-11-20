import 'package:flutter/material.dart';

import 'theme_custom_button.dart';
import 'theme_custom_colors.dart';
import 'theme_custom_text_style.dart';

extension ThemeCustomHelper on BuildContext {
  ThemeCustom get themeCustom => Theme.of(this).extension<ThemeCustom>()!;
}

class ThemeCustom extends ThemeExtension<ThemeCustom> {
  final ThemeCustomColors colors;
  final ThemeCustomTextStyle text;
  final ThemeCustomButton button;
  final EdgeInsetsGeometry pagePadding;

  const ThemeCustom({
    required this.colors,
    required this.text,
    required this.button,
    required this.pagePadding,
  });

  @override
  ThemeExtension<ThemeCustom> copyWith({
    ThemeCustomColors? colors,
    ThemeCustomTextStyle? textStyle,
    ThemeCustomButton? button,
    EdgeInsetsGeometry? pagePadding,
  }) {
    return ThemeCustom(
      colors: colors ?? this.colors,
      text: textStyle ?? this.text,
      button: button ?? this.button,
      pagePadding: pagePadding ?? this.pagePadding,
    );
  }

  @override
  ThemeExtension<ThemeCustom> lerp(
      ThemeExtension<ThemeCustom>? other, double t) {
    return this;
  }

  static ThemeCustom lightTheme() => const ThemeCustom(
        colors: ThemeCustomColors.light,
        text: ThemeCustomTextStyle.light,
        button: ThemeCustomButton.light,
        pagePadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      );

  static ThemeCustom darkTheme() => lightTheme();
}
