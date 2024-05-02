import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_pulse/core/api_endpoints.dart';
import 'package:weather_pulse/core/failure/failure.dart';
import 'package:weather_pulse/domain/weather/i_weather_repo.dart';
import 'package:weather_pulse/domain/weather/models/weather_model/weather_model.dart';

import '../../core/services/http_service.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherRepository implements IWeatherRepo {
  final HttpService httpService;
  WeatherRepository(this.httpService);

  /// Either is used to handel error and success
  @override
  Future<Either<Failure, WeatherModel>> getCurrentWeatherForACity({
    required String cityName,
  }) async {
    final response = await httpService.request(
      apiUrl: ApiEndpoints.weatherForACityEndpoint,
    );

    return response.fold(
      (l) => Left(l.keys.first),
      (res) async {
        return Right(WeatherModel.fromJson(jsonDecode(res.body)));
      },
    );
  }
}
