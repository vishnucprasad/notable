part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.nameChanged(String name) = _NameChanged;
  const factory SignupEvent.emailChanged(String email) = _EmailChanged;
  const factory SignupEvent.passwordChanged(String password) = _passwordChanged;
  const factory SignupEvent.signupButtonPressed() = _SignupButtonPressed;
}
