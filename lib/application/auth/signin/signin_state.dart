part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState({
    required bool isSubmitting,
    required bool showValidationError,
    required Credentials credentials,
    required Option<Either<AuthFailure, Unit>> failureOrSuccessOption,
  }) = _SigninState;

  factory SigninState.initial() {
    return SigninState(
      isSubmitting: false,
      showValidationError: false,
      credentials: Credentials.empty(),
      failureOrSuccessOption: none(),
    );
  }
}
