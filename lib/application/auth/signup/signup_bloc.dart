import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/signup_credentials.dart';
import 'package:notable/domain/auth/i_auth_facade.dart';
import 'package:notable/domain/core/value_objects.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final IAuthFacade _authFacade;
  SignupBloc(this._authFacade) : super(SignupState.initial()) {
    on<SignupEvent>((event, emit) async {
      await event.map(
        nameChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            name: Name(e.name),
          ),
          failureOrSuccessOption: none(),
        )),
        emailChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            emailAddress: EmailAddress(e.email),
          ),
          failureOrSuccessOption: none(),
        )),
        passwordChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            password: Password(e.password),
          ),
          failureOrSuccessOption: none(),
        )),
        signupButtonPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final isCredentialsValid = state.credentials.failureOption.isNone();

          if (isCredentialsValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            failureOrSuccess = await _authFacade.signupWithEmailAndPassword(
              credentials: state.credentials,
            );
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
