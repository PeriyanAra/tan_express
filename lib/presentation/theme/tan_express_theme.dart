import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';
import 'package:foundation_2/presentation/theme/tan_express_colors_palette.dart';

class TanExpressTheme {
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

  static TanExpressColorTheme _lightColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.light,
      foregroundPrimary: TanExpressColor(
        TanExpressColorsPalette.black.value,
        pressed: TanExpressColorsPalette.skin60,
      ),
      foregroundSecondary: TanExpressColor(
        TanExpressColorsPalette.gray60.value,
        disabled: TanExpressColorsPalette.black,
      ),
      foregroundTertiary: TanExpressColor(
        TanExpressColorsPalette.white.value,
        disabled: TanExpressColorsPalette.gray10,
      ),
      backgroundPrimary: TanExpressColor(
        TanExpressColorsPalette.white.value,
        pressed: TanExpressColorsPalette.gray10,
      ),
      backgroundSecondary: TanExpressColor(
        TanExpressColorsPalette.gray10.value,
        pressed: TanExpressColorsPalette.light,
      ),
      backgroundTertiary: TanExpressColor(
        TanExpressColorsPalette.black.value,
      ),
    );
  }

  static TanExpressColorTheme _darkColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.dark,
      foregroundPrimary: TanExpressColor(
        TanExpressColorsPalette.white.value,
      ),
      foregroundSecondary: TanExpressColor(
        TanExpressColorsPalette.gray50.value,
      ),
      foregroundTertiary: TanExpressColor(
        TanExpressColorsPalette.dark60.value,
      ),
      backgroundPrimary: TanExpressColor(
        TanExpressColorsPalette.dark70.value,
      ),
      backgroundSecondary: TanExpressColor(
        TanExpressColorsPalette.dark50.value,
      ),
      backgroundTertiary: TanExpressColor(
        TanExpressColorsPalette.white.value,
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////

  static TanExpressColorTheme _baseColorTheme({
    required Brightness brightness,
    required TanExpressColor foregroundPrimary,
    required TanExpressColor foregroundSecondary,
    required TanExpressColor foregroundTertiary,
    required TanExpressColor backgroundPrimary,
    required TanExpressColor backgroundSecondary,
    required TanExpressColor backgroundTertiary,
  }) {
    return TanExpressColorTheme(
      brightness: brightness,
      primary: TanExpressColor(
        TanExpressColorsPalette.red60.value,
      ),
      secondary: TanExpressColor(
        TanExpressColorsPalette.yellow60.value,
      ),
      tertiary: TanExpressColor(
        TanExpressColorsPalette.blue60.value,
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
