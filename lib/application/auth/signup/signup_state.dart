part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isSubmitting,
    required bool showValidationError,
    required SignupCredentials credentials,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SignupState;

  factory SignupState.initial() {
    return SignupState(
      isSubmitting: false,
      showValidationError: false,
      credentials: SignupCredentials.empty(),
      failureOrSuccessOption: none(),
    );
  }
}
