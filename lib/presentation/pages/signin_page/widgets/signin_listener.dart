import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/signin/signin_bloc.dart';
import 'package:notable/presentation/pages/signin_page/widgets/signin_body.dart';
import 'package:notable/presentation/router/app_router.dart';

class SigninListener extends StatelessWidget {
  const SigninListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SigninBloc, SigninState>(
      listenWhen: (p, c) =>
          p.failureOrSuccessOption != c.failureOrSuccessOption,
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (f) {
              FlushbarHelper.createError(
                message: f.map(
                  clientFailure: (e) => e.msg,
                  serverFailure: (e) => e.msg,
                  emailAlredyInUse: (_) =>
                      'The email address is already in use by another account',
                  invalidCredentials: (_) =>
                      'Invalid email and password combination',
                  cancelledByUser: (_) => 'Cancelled',
                ),
              ).show(context);
            },
            (_) => context.replaceRoute(const HomeRoute()),
          ),
        );
      },
      child: const SigninBody(),
    );
  }
}
