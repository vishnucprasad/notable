part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.emailChanged(String email) = _EmailChanged;
  const factory SigninEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SigninEvent.signinButtonPressed() = _SigninButtonPressed;
}