part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({required ApiResponse weatherRes}) = _Initial;
  factory WeatherState.initial() => WeatherState(weatherRes: ApiResponse());
}
