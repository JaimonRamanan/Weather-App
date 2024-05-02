import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:weather_pulse/core/failure/failure.dart';
import 'package:weather_pulse/domain/weather/models/weather_model/weather_model.dart';

abstract class IWeatherRepo {
  Future<Either<Failure, WeatherModel>> getCurrentWeatherForACity({
    required String cityName,
    required BuildContext context,
  });
}
