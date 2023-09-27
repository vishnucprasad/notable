import 'package:flutter/material.dart';
import 'package:notable/presentation/core/globals.dart';
import 'package:notable/presentation/router/app_router.dart';
import 'package:notable/presentation/theme/app_theme.dart';

class NotableApp extends StatelessWidget {
  NotableApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      scaffoldMessengerKey: scaffoldMessengerKey,
      routerConfig: _appRouter.config(),
    );
  }
}
