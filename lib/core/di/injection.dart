import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_pulse/core/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependancies() async => getIt.init();
