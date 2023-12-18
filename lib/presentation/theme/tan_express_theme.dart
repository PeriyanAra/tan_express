import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';
import 'package:foundation_2/presentation/theme/tan_express_colors_palette.dart';
import 'package:foundation_2/presentation/theme/tan_express_text_theme.dart';

class TanExpressTheme {
  static ThemeData light() {
    final colorTheme = _lightColorTheme();
    final textTheme = TanExpressTextTheme(colorTheme: colorTheme);

    return ThemeData(
      applyElevationOverlayColor: false,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      scaffoldBackgroundColor: colorTheme.backgroundPrimary,
      extensions: <ThemeExtension<dynamic>>[
        colorTheme,
        textTheme,
      ],
    );
  }

  static TanExpressColorTheme _lightColorTheme() {
    return _baseColorTheme(
      brightness: Brightness.light,
    );
  }

  /////////////////////////////////////////////////////////////////
  /************************* BASE ********************************/
  /////////////////////////////////////////////////////////////////

  static TanExpressColorTheme _baseColorTheme({
    required Brightness brightness,
  }) {
    return TanExpressColorTheme(
      brightness: brightness,
      buttonPrimary: TanExpressColor(
        TanExpressColorsPalette.orange.value,
        disabled: TanExpressColorsPalette.gray40,
      ),
      buttonSecondary: TanExpressColor(
        TanExpressColorsPalette.dark70.value,
      ),
      buttonTertiary: TanExpressColor(
        TanExpressColorsPalette.gray10.value,
      ),
      textPrimary: TanExpressColor(
        TanExpressColorsPalette.black.value,
      ),
      textSecondary: TanExpressColor(
        TanExpressColorsPalette.gray50.value,
      ),
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
        TanExpressColorsPalette.gray10.value,
      ),
      backgroundSecondary: TanExpressColor(
        TanExpressColorsPalette.white.value,
      ),
      backgroundTertiary: TanExpressColor(
        TanExpressColorsPalette.black.value,
      ),
      appBarPrimary: TanExpressColor(
        TanExpressColorsPalette.white.value,
      ),
    );
  }
}
