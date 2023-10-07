import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = _ExceedingLength<T>;
  const factory ValueFailure.multiLine({
    required T failedValue,
  }) = _multiLine;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = _Empty<T>;
  const factory ValueFailure.invalid({
    required T failedValue,
  }) = _Invalid<T>;
}
