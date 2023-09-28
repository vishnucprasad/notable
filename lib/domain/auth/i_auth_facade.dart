import 'package:dartz/dartz.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/signin_credentials.dart';
import 'package:notable/domain/auth/signup_credentials.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required SignupCredentials credentials,
  });
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required SigninCredentials credentials,
  });
}
