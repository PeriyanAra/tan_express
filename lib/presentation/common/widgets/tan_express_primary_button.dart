import 'package:flutter/material.dart';
import 'package:foundation_2/presentation/theme/theme.dart';

const _height = 56.0;
const _radius = 100.0;

class TanExpressPrimaryButton extends StatelessWidget {
  const TanExpressPrimaryButton({
    required this.text,
    required this.onTap,
    this.enabled = true,
    super.key,
  });

  final String text;
  final VoidCallback onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final colorTheme = TanExpressColorTheme.of(context);
    final textTheme = TanExpressTextTheme.of(context);

    return SizedBox(
      width: double.infinity,
      height: _height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_radius),
          ),
          elevation: 0,
          backgroundColor: colorTheme.buttonPrimary,
          disabledBackgroundColor: colorTheme.buttonPrimary.disabled,
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
        ),
        onPressed: enabled ? onTap : null,
        child: Text(
          text,
          style: textTheme.callout.copyWith(
            fontWeight: FontWeight.w800,
            color: colorTheme.foregroundPrimary,
          ),
        ),
      ),
    );
  }
}
