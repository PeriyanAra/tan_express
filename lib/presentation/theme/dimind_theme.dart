import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/dimind_color.dart';
import 'package:foundation_2/presentation/theme/dimind_color_theme.dart';
import 'package:foundation_2/presentation/theme/dimind_colors_palette.dart';

class DimindTheme {
  static ThemeData light() {
    final colorTheme = _lightColorTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
      ),
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
      ],
    );
  }

  static ThemeData dark() {
    final colorTheme = _darkColorTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: colorTheme.primary,
      ),
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
      ],
    );
  }

  static DimindColorTheme _lightColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.light,
      foregroundPrimary: DimindColor(
        DimindColorsPalette.black.value,
        pressed: DimindColorsPalette.skin60,
      ),
      foregroundSecondary: DimindColor(
        DimindColorsPalette.gray60.value,
        disabled: DimindColorsPalette.black,
      ),
      foregroundTertiary: DimindColor(
        DimindColorsPalette.white.value,
        disabled: DimindColorsPalette.gray10,
      ),
      backgroundPrimary: DimindColor(
        DimindColorsPalette.white.value,
        pressed: DimindColorsPalette.gray10,
      ),
      backgroundSecondary: DimindColor(
        DimindColorsPalette.gray10.value,
        pressed: DimindColorsPalette.light,
      ),
      backgroundTertiary: DimindColor(
        DimindColorsPalette.black.value,
      ),
    );
  }

  static DimindColorTheme _darkColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.dark,
      foregroundPrimary: DimindColor(
        DimindColorsPalette.white.value,
      ),
      foregroundSecondary: DimindColor(
        DimindColorsPalette.gray50.value,
      ),
      foregroundTertiary: DimindColor(
        DimindColorsPalette.dark60.value,
      ),
      backgroundPrimary: DimindColor(
        DimindColorsPalette.dark70.value,
      ),
      backgroundSecondary: DimindColor(
        DimindColorsPalette.dark50.value,
      ),
      backgroundTertiary: DimindColor(
        DimindColorsPalette.white.value,
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////

  static DimindColorTheme _baseColorTheme({
    required Brightness brightness,
    required DimindColor foregroundPrimary,
    required DimindColor foregroundSecondary,
    required DimindColor foregroundTertiary,
    required DimindColor backgroundPrimary,
    required DimindColor backgroundSecondary,
    required DimindColor backgroundTertiary,
  }) {
    return DimindColorTheme(
      brightness: brightness,
      primary: DimindColor(
        DimindColorsPalette.red60.value,
      ),
      secondary: DimindColor(
        DimindColorsPalette.yellow60.value,
      ),
      tertiary: DimindColor(
        DimindColorsPalette.blue60.value,
      ),
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
    );
  }
}
