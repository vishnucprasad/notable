import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notable/domain/core/value_failure.dart';
import 'package:notable/domain/core/value_objects.dart';

part 'credentials.freezed.dart';

@freezed
class Credentials with _$Credentials {
  const Credentials._();

  const factory Credentials({
    required EmailAddress emailAddress,
    required Password password,
  }) = _Credentials;

  factory Credentials.empty() {
    return Credentials(
      emailAddress: EmailAddress("input"),
      password: Password("input"),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return emailAddress.failureOrUnit
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
