import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_pulse/domain/weather/i_weather_repo.dart';
import 'package:weather_pulse/core/api_response/api_response.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepo repo;
  TextEditingController cityNameCtr = TextEditingController();
  WeatherBloc(this.repo) : super(WeatherState.initial()) {
    on<_GetWeather>(
      (event, emit) async {
        emit(state.copyWith.weatherRes(
          data: null,
          error: null,
          loading: true,
        ));
        try {
          final response = await repo.getCurrentWeatherForACity(
            context: event.context,
            cityName: cityNameCtr.text,
          );

          response.fold(
            (faiure) {
              emit(state.copyWith.weatherRes(loading: false, error: faiure));
            },
            (res) {
              emit(state.copyWith.weatherRes(loading: false, data: res));
            },
          );
        } catch (e) {
          emit(state.copyWith.weatherRes(loading: false));
        }
      },
    );
  }
}
