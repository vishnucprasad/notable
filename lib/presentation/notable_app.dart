import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/auth_bloc.dart';
import 'package:notable/injection.dart';
import 'package:notable/presentation/core/globals.dart';
import 'package:notable/presentation/router/app_router.dart';
import 'package:notable/presentation/theme/app_theme.dart';

class NotableApp extends StatelessWidget {
  NotableApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {
          return getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested());
        }),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) => null,
            authenticated: (_) => _appRouter.replace(const HomeRoute()),
            unauthenticated: (_) => _appRouter.replace(const SigninRoute()),
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: buildLightTheme(),
          darkTheme: buildDarkTheme(),
          scaffoldMessengerKey: scaffoldMessengerKey,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
