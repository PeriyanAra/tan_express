import 'package:flutter/material.dart';

class OnboardingDescription extends StatelessWidget {
  const OnboardingDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24.0,
            color: Colors.black,
            height: 33.6 / 24.0,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          description,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
            color: Color(0xFF8E8E93),
            height: 19.6 / 14.0,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
