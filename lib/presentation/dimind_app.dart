import 'package:flutter/material.dart';
import 'package:foundation_2/app/app_theme_mode/app_theme_mode.dart';
import 'package:foundation_2/presentation/home/home_screen.dart';
import 'package:foundation_2/presentation/theme/dimind_theme.dart';
import 'package:provider/provider.dart';

class DimindApp extends StatefulWidget {
  const DimindApp({super.key});

  @override
  State<DimindApp> createState() => _DimindAppState();
}

class _DimindAppState extends State<DimindApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiMind',
      theme: DimindTheme.light(),
      darkTheme: DimindTheme.dark(),
      themeMode: context.watch<AppThemeMode>().themeMode,
      home: const HomeScreen(),
    );
  }
}
