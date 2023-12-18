import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foundation_2/presentation/theme/theme.dart';

import '../test_values.dart';

void main() {
  group('Dimind Colors ---', () {
    test('copyWith replaces value', () {
      final black = DimindColor(Colors.black.value);
      var colors = createColorTheme(whiteColor);

      expect(colors.primary, whiteColor);
      colors = colors.copyWith(primary: black);
      expect(colors.primary, black);
      colors = colors.copyWith(secondary: black);
      expect(colors.secondary, black);
    });
  });
}
