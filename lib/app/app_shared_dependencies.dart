import 'package:foundation_2/app/app_theme_mode/app_theme_mode_settings.dart';
import 'package:foundation_2/core/di/dependencies.dart';
import 'package:foundation_2/core/di/di.dart';

class AppSharedDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerSingleton<AppThemeModeSettings>(
      await AppThemeModeSettings.createInstance(appKeyValueStorage: di()),
    );
  }
}
