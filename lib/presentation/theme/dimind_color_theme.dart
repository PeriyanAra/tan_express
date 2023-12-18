import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/dimind_color.dart';

const _halfT = 0.5;

@immutable
class DimindColorTheme extends ThemeExtension<DimindColorTheme> {
  const DimindColorTheme({
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

  final DimindColor primary;
  final DimindColor secondary;
  final DimindColor tertiary;

  final DimindColor foregroundPrimary;
  final DimindColor foregroundSecondary;
  final DimindColor foregroundTertiary;

  final DimindColor backgroundPrimary;
  final DimindColor backgroundSecondary;
  final DimindColor backgroundTertiary;

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
      other is DimindColorTheme &&
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
  DimindColorTheme copyWith({
    DimindColor? primary,
    DimindColor? secondary,
  }) {
    return DimindColorTheme(
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
  ThemeExtension<DimindColorTheme> lerp(
    covariant ThemeExtension<DimindColorTheme>? other,
    double t,
  ) {
    if (other is! DimindColorTheme) {
      return this;
    }

    return DimindColorTheme(
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

  static DimindColorTheme of(BuildContext context) {
    return Theme.of(context).extension<DimindColorTheme>()!;
  }
}
