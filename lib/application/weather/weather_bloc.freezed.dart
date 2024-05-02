// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  ApiResponse<dynamic> get weatherRes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call({ApiResponse<dynamic> weatherRes});

  $ApiResponseCopyWith<dynamic, $Res> get weatherRes;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherRes = null,
  }) {
    return _then(_value.copyWith(
      weatherRes: null == weatherRes
          ? _value.weatherRes
          : weatherRes // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<dynamic, $Res> get weatherRes {
    return $ApiResponseCopyWith<dynamic, $Res>(_value.weatherRes, (value) {
      return _then(_value.copyWith(weatherRes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiResponse<dynamic> weatherRes});

  @override
  $ApiResponseCopyWith<dynamic, $Res> get weatherRes;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherRes = null,
  }) {
    return _then(_$InitialImpl(
      weatherRes: null == weatherRes
          ? _value.weatherRes
          : weatherRes // ignore: cast_nullable_to_non_nullable
              as ApiResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.weatherRes});

  @override
  final ApiResponse<dynamic> weatherRes;

  @override
  String toString() {
    return 'WeatherState(weatherRes: $weatherRes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.weatherRes, weatherRes) ||
                other.weatherRes == weatherRes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherRes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WeatherState {
  const factory _Initial({required final ApiResponse<dynamic> weatherRes}) =
      _$InitialImpl;

  @override
  ApiResponse<dynamic> get weatherRes;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetWeatherImplCopyWith<$Res> {
  factory _$$GetWeatherImplCopyWith(
          _$GetWeatherImpl value, $Res Function(_$GetWeatherImpl) then) =
      __$$GetWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherImpl>
    implements _$$GetWeatherImplCopyWith<$Res> {
  __$$GetWeatherImplCopyWithImpl(
      _$GetWeatherImpl _value, $Res Function(_$GetWeatherImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherImpl implements _GetWeather {
  const _$GetWeatherImpl();

  @override
  String toString() {
    return 'WeatherEvent.getWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWeather,
  }) {
    return getWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getWeather,
  }) {
    return getWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather() = _$GetWeatherImpl;
}
