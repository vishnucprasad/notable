import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notable/domain/auth/auth_failure.dart';
import 'package:notable/domain/auth/i_auth_facade.dart';
import 'package:notable/domain/auth/signin_credentials.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final IAuthFacade _authFacade;
  SigninBloc(this._authFacade) : super(SigninState.initial()) {
    on<SigninEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
