import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notable/application/auth/auth_bloc.dart';
import 'package:notable/application/notes/note_actor/note_actor_bloc.dart';
import 'package:notable/application/notes/note_form/note_form_bloc.dart';
import 'package:notable/application/notes/note_watcher/note_watcher_bloc.dart';
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
        BlocProvider(create: (_) {
          return getIt<NoteFormBloc>();
        }),
        BlocProvider(create: (_) {
          return getIt<NoteWatcherBloc>();
        }),
        BlocProvider(create: (_) {
          return getIt<NoteActorBloc>();
        }),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) => null,
                authenticated: (_) {
                  context
                      .read<NoteWatcherBloc>()
                      .add(const NoteWatcherEvent.watchAllStarted());
                  _appRouter.replace(const HomeRoute());
                },
                unauthenticated: (_) => _appRouter.replace(const SigninRoute()),
              );
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                deleteFailure: (f) => FlushbarHelper.createError(
                  message: 'Failed to delete note',
                ).show(context),
                orElse: () {},
              );
            },
          ),
        ],
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
