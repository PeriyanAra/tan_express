import 'package:foundation_2/core/core.dart';
import 'package:foundation_2/core/di/dependencies.dart';
import 'package:foundation_2/core/di/di.dart';

class CoreDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di
      ..registerLazySingleton<CustomJsonDecoder>(() => CustomJsonDecoder([]))
      ..registerLazySingleton<JsonStringConverter>(() => JsonStringConverter(jsonDecoder: di()));
  }
}
