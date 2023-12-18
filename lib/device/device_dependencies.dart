import 'package:foundation_2/core/di/dependencies.dart';
import 'package:foundation_2/core/di/di.dart';
import 'package:foundation_2/device/device.dart';
import 'package:foundation_2/domain/domain.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DeviceDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    final appKeyValueStorage = DeviceAppKeyValueStorage(
      sharedPreferences: await SharedPreferences.getInstance(),
      jsonStringConverter: di(),
    );

    di.registerSingleton<AppKeyValueStorage>(appKeyValueStorage);
  }
}
