import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverFailure() = _ServerFailure;
  const factory Failure.clientFailure() = _ClientFailure;
  const factory Failure.networkFailure() = _NetworkFailure;
  const factory Failure.timeout() = _Timeout;
}
