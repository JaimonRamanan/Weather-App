import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_pulse/core/api_endpoints.dart';
import 'package:weather_pulse/core/failure/failure.dart';
import 'package:weather_pulse/domain/weather/i_weather_repo.dart';
import 'package:weather_pulse/domain/weather/models/weather_model/weather_model.dart';
import 'package:weather_pulse/presentation/widgets/show_toast.dart';

import '../../core/constants.dart';
import '../../core/services/http_service.dart';

@LazySingleton(as: IWeatherRepo)
class WeatherRepository implements IWeatherRepo {
  final HttpService httpService;
  WeatherRepository(this.httpService);

  /// Either is used to handel error and success
  @override
  Future<Either<Failure, WeatherModel>> getCurrentWeatherForACity({
    required String cityName,
    required BuildContext context,
  }) async {
    String apiUrl =
        "${ApiEndpoints.weatherForACityEndpoint}?q=$cityName&key=$apiKey";
    final response = await httpService.request(apiUrl: apiUrl);

    return response.fold(
      (l) {
        showToast(context, msg: l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        return Right(WeatherModel.fromJson(jsonDecode(res.body)));
      },
    );
  }
}
