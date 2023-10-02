import 'package:dartz/dartz.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/credentials.dart';
import 'package:notable/domain/auth/notable_user.dart';

abstract class IAuthFacade {
  Future<Option<NotableUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
