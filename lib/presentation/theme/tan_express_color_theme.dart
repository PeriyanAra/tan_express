import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color.dart';

const _halfT = 0.5;

@immutable
class TanExpressColorTheme extends ThemeExtension<TanExpressColorTheme> {
  const TanExpressColorTheme({
    required this.appBarPrimary,
    required this.buttonPrimary,
    required this.buttonSecondary,
    required this.buttonTertiary,
    required this.brightness,
    required this.textPrimary,
    required this.textSecondary,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
  });

  final Brightness brightness;

  final TanExpressColor textPrimary;
  final TanExpressColor textSecondary;

  final TanExpressColor buttonPrimary;
  final TanExpressColor buttonSecondary;
  final TanExpressColor buttonTertiary;

  final TanExpressColor foregroundPrimary;
  final TanExpressColor foregroundSecondary;
  final TanExpressColor foregroundTertiary;

  final TanExpressColor backgroundPrimary;
  final TanExpressColor backgroundSecondary;
  final TanExpressColor backgroundTertiary;

  final TanExpressColor appBarPrimary;

  @override
  int get hashCode => Object.hash(
        textPrimary,
        textSecondary,
        buttonPrimary,
        buttonSecondary,
        buttonTertiary,
        foregroundPrimary,
        foregroundSecondary,
        foregroundTertiary,
        backgroundPrimary,
        backgroundSecondary,
        backgroundTertiary,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TanExpressColorTheme &&
          runtimeType == other.runtimeType &&
          textPrimary == other.textPrimary &&
          textSecondary == other.textSecondary &&
          buttonPrimary == other.buttonPrimary &&
          buttonSecondary == other.buttonSecondary &&
          buttonTertiary == other.buttonTertiary &&
          foregroundPrimary == other.foregroundPrimary &&
          foregroundSecondary == other.foregroundSecondary &&
          foregroundTertiary == other.foregroundTertiary &&
          backgroundPrimary == other.backgroundPrimary &&
          backgroundSecondary == other.backgroundSecondary &&
          backgroundTertiary == other.backgroundTertiary;

  @override
  TanExpressColorTheme copyWith() {
    return TanExpressColorTheme(
      brightness: brightness,
      buttonPrimary: buttonPrimary,
      buttonSecondary: buttonSecondary,
      buttonTertiary: buttonTertiary,
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
      textPrimary: textPrimary,
      textSecondary: textSecondary,
      appBarPrimary: appBarPrimary,
    );
  }

  @override
  ThemeExtension<TanExpressColorTheme> lerp(
    covariant ThemeExtension<TanExpressColorTheme>? other,
    double t,
  ) {
    if (other is! TanExpressColorTheme) {
      return this;
    }

    return TanExpressColorTheme(
      brightness: t < _halfT ? brightness : other.brightness,
      buttonPrimary: buttonPrimary.lerp(other.buttonPrimary, t),
      buttonSecondary: buttonSecondary.lerp(other.buttonSecondary, t),
      buttonTertiary: buttonTertiary.lerp(other.buttonTertiary, t),
      foregroundPrimary: foregroundPrimary.lerp(other.foregroundPrimary, t),
      foregroundSecondary: foregroundSecondary.lerp(other.foregroundSecondary, t),
      foregroundTertiary: foregroundTertiary.lerp(other.foregroundTertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
      backgroundSecondary: backgroundSecondary.lerp(other.backgroundSecondary, t),
      backgroundTertiary: backgroundTertiary.lerp(other.backgroundTertiary, t),
      textPrimary: textPrimary.lerp(other.textPrimary, t),
      textSecondary: textSecondary.lerp(other.textSecondary, t),
      appBarPrimary: backgroundTertiary.lerp(other.appBarPrimary, t),
    );
  }

  static TanExpressColorTheme of(BuildContext context) {
    return Theme.of(context).extension<TanExpressColorTheme>()!;
  }
}
