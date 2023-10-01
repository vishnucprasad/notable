import 'package:dartz/dartz.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/credentials.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required Credentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required Credentials credentials,
  });
}
