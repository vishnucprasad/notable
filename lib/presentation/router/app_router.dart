import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:notable/domain/core/value_objects.dart';
import 'package:notable/presentation/pages/create_note_page/create_note_page.dart';
import 'package:notable/presentation/pages/home_page/home_page.dart';
import 'package:notable/presentation/pages/splash_page/splash_page.dart';
import 'package:notable/presentation/pages/signin_page/signin_page.dart';
import 'package:notable/presentation/pages/view_note_page/view_note_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: SplashRoute.page,
        initial: true,
      ),
      CustomRoute(
        page: SigninRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: HomeRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: CreateNoteRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
      CustomRoute(
        page: ViewNoteRoute.page,
        transitionsBuilder: TransitionsBuilders.fadeIn,
      ),
    ];
  }
}
