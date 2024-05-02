// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.g.dart';
part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    Location? location,
    Current? current,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Location with _$Location {
  factory Location({
    String? name,
    String? region,
    String? country,
    num? lat,
    num? lon,
    @JsonKey(name: 'tz_id') String? tzId,
    @JsonKey(name: 'localtime_epoch') num? localtimeEpoch,
    String? localtime,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Current with _$Current {
  factory Current({
    @JsonKey(name: 'last_updated_epoch') num? lastUpdatedEpoch,
    @JsonKey(name: 'last_updated') String? lastUpdated,
    @JsonKey(name: 'temp_c') num? tempC,
    @JsonKey(name: 'temp_f') num? tempF,
    @JsonKey(name: 'is_day') num? isDay,
    Condition? condition,
    @JsonKey(name: 'wind_mph') num? windMph,
    @JsonKey(name: 'wind_kph') num? windKph,
    @JsonKey(name: 'wind_degree') num? windDegree,
    @JsonKey(name: 'wind_dir') String? windDir,
    @JsonKey(name: 'pressure_mb') num? pressureMb,
    @JsonKey(name: 'pressure_in') num? pressureIn,
    @JsonKey(name: 'precip_mm') num? precipMm,
    @JsonKey(name: 'precip_in') num? precipIn,
    num? humidity,
    num? cloud,
    @JsonKey(name: 'feelslike_c') num? feelslikeC,
    @JsonKey(name: 'feelslike_f') num? feelslikeF,
    @JsonKey(name: 'vis_km') num? visKm,
    @JsonKey(name: 'vis_miles') num? visMiles,
    num? uv,
    @JsonKey(name: 'gust_mph') num? gustMph,
    @JsonKey(name: 'gust_kph') num? gustKph,
  }) = _Current;

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
}

@freezed
class Condition with _$Condition {
  factory Condition({
    String? text,
    String? icon,
    num? code,
  }) = _Condition;

  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
}
