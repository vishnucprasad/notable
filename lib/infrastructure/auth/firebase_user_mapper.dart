import 'package:firebase_auth/firebase_auth.dart';
import 'package:notable/domain/auth/notable_user.dart';
import 'package:notable/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  NotableUser toDomain() {
    return NotableUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
