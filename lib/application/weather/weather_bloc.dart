import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_pulse/core/api_response/api_response.dart';
import 'package:weather_pulse/domain/weather/i_weather_repo.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepo repo;
  WeatherBloc(this.repo) : super(WeatherState.initial()) {
    on<_GetWeather>(
      (event, emit) {
        emit(state.copyWith.weatherRes(loading: true));
      },
    );
  }
}
