import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notable/domain/core/value_objects.dart';

part 'notable_user.freezed.dart';

@freezed
class NotableUser with _$NotableUser {
  const factory NotableUser({
    required UniqueId id,
  }) = _NotableUser;
}
