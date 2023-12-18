import 'package:flutter/material.dart';
import 'package:foundation_2/app/app_theme_mode/app_theme_mode.dart';
import 'package:foundation_2/presentation/home/home_screen.dart';
import 'package:foundation_2/presentation/theme/tan_express_theme.dart';
import 'package:provider/provider.dart';

class TanExpressApp extends StatelessWidget {
  const TanExpressApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiMind',
      theme: TanExpressTheme.light(),
      darkTheme: TanExpressTheme.dark(),
      themeMode: context.watch<AppThemeMode>().themeMode,
      home: const HomeScreen(),
    );
  }
}
