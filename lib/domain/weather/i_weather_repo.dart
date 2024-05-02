import 'package:dartz/dartz.dart';
import 'package:weather_pulse/core/failure/failure.dart';

abstract class IWeatherRepo {
  Future<Either<Failure, dynamic>> getCurrentWeatherForACity({
    required String cityName,
  });
}
