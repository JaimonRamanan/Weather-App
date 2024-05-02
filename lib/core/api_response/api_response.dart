import 'package:freezed_annotation/freezed_annotation.dart';

import '../failure/failure.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  factory ApiResponse({
    T? data,
    int? statusCode,
    String? message,
    Failure? error,
  }) = _ApiResponse<T>;
}
