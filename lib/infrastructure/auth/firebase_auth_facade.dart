import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/credentials.dart';
import 'package:notable/domain/auth/i_auth_facade.dart';
import 'package:notable/injection.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth = getIt<FirebaseAuth>();

  @override
  Future<Either<AuthFailure, Unit>> signupWithEmailAndPassword({
    required Credentials credentials,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: credentials.emailAddress.getOrCrash(),
        password: credentials.password.getOrCrash(),
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlredyInUse());
      }

      return left(AuthFailure.serverFailure(e.message ?? ""));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signinWithEmailAndPassword({
    required Credentials credentials,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: credentials.emailAddress.getOrCrash(),
        password: credentials.password.getOrCrash(),
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email' ||
          e.code == 'user-not-found' ||
          e.code == 'wrong-password') {
        return left(const AuthFailure.invalidCredentials());
      }

      return left(AuthFailure.serverFailure(e.message ?? ""));
    }
  }
}
