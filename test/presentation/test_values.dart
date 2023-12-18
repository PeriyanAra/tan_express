import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/theme.dart';

final whiteColor = DimindColor(Colors.white.value);

DimindColorTheme createColorTheme(DimindColor color) {
  return DimindColorTheme(
    brightness: Brightness.light,
    backgroundPrimary: color,
    backgroundSecondary: color,
    backgroundTertiary: color,
    foregroundPrimary: color,
    foregroundSecondary: color,
    foregroundTertiary: color,
    primary: color,
    secondary: color,
    tertiary: color,
  );
}
