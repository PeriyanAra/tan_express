import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/tan_express_color.dart';

const _halfT = 0.5;

@immutable
class TanExpressColorTheme extends ThemeExtension<TanExpressColorTheme> {
  const TanExpressColorTheme({
    required this.brightness,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.foregroundPrimary,
    required this.foregroundSecondary,
    required this.foregroundTertiary,
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.backgroundTertiary,
  });

  final Brightness brightness;

  final TanExpressColor primary;
  final TanExpressColor secondary;
  final TanExpressColor tertiary;

  final TanExpressColor foregroundPrimary;
  final TanExpressColor foregroundSecondary;
  final TanExpressColor foregroundTertiary;

  final TanExpressColor backgroundPrimary;
  final TanExpressColor backgroundSecondary;
  final TanExpressColor backgroundTertiary;

  @override
  int get hashCode => Object.hash(
        primary,
        secondary,
        tertiary,
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
          primary == other.primary &&
          secondary == other.secondary &&
          tertiary == other.tertiary &&
          foregroundPrimary == other.foregroundPrimary &&
          foregroundSecondary == other.foregroundSecondary &&
          foregroundTertiary == other.foregroundTertiary &&
          backgroundPrimary == other.backgroundPrimary &&
          backgroundSecondary == other.backgroundSecondary &&
          backgroundTertiary == other.backgroundTertiary;

  @override
  TanExpressColorTheme copyWith({
    TanExpressColor? primary,
    TanExpressColor? secondary,
  }) {
    return TanExpressColorTheme(
      brightness: brightness,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary,
      foregroundPrimary: foregroundPrimary,
      foregroundSecondary: foregroundSecondary,
      foregroundTertiary: foregroundTertiary,
      backgroundPrimary: backgroundPrimary,
      backgroundSecondary: backgroundSecondary,
      backgroundTertiary: backgroundTertiary,
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
      primary: primary.lerp(other.primary, t),
      secondary: secondary.lerp(other.secondary, t),
      tertiary: tertiary.lerp(other.tertiary, t),
      foregroundPrimary: foregroundPrimary.lerp(other.foregroundPrimary, t),
      foregroundSecondary: foregroundSecondary.lerp(other.foregroundSecondary, t),
      foregroundTertiary: foregroundTertiary.lerp(other.foregroundTertiary, t),
      backgroundPrimary: backgroundPrimary.lerp(other.backgroundPrimary, t),
      backgroundSecondary: backgroundSecondary.lerp(other.backgroundSecondary, t),
      backgroundTertiary: backgroundTertiary.lerp(other.backgroundTertiary, t),
    );
  }

  static TanExpressColorTheme of(BuildContext context) {
    return Theme.of(context).extension<TanExpressColorTheme>()!;
  }
}
