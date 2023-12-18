import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class TanExpressTextTheme extends ThemeExtension<TanExpressTextTheme> {
  const TanExpressTextTheme({
    required TanExpressColorTheme colorTheme,
  }) : _colorTheme = colorTheme;

  final TanExpressColorTheme _colorTheme;

  TextStyle get largeTitle {
    return TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get title1 {
    return TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get title1_5 {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get title2 {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get title3 {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get headline {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get body {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get callout {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get subhead {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get footnote {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get caption1 {
    return TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  TextStyle get caption2 {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: _colorTheme.textPrimary,
    );
  }

  @override
  ThemeExtension<TanExpressTextTheme> copyWith() {
    throw UnimplementedError();
  }

  @override
  ThemeExtension<TanExpressTextTheme> lerp(
    covariant ThemeExtension<TanExpressTextTheme>? other,
    double t,
  ) {
    throw UnimplementedError();
  }

  static TanExpressTextTheme of(BuildContext context) {
    return Theme.of(context).extension<TanExpressTextTheme>()!;
  }
}
