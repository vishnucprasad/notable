import 'package:dartz/dartz.dart';
import 'package:notable/domain/core/value_failure.dart';
import 'package:notable/domain/core/value_object.dart';
import 'package:notable/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validateStringNotEmpty(input).flatMap(
      (a) => validateEmailAddress(a),
    ));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(validateStringNotEmpty(input).flatMap(
      (a) => validatePassWord(a),
    ));
  }
  const Password._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }
  factory UniqueId.fromUniqueString(String? uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId!),
    );
  }
  const UniqueId._(this.value);
}
