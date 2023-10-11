// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CreateNoteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateNotePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    SigninRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SigninPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ViewNoteRoute.name: (routeData) {
      final args = routeData.argsAs<ViewNoteRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ViewNotePage(
          key: args.key,
          note: args.note,
        ),
      );
    },
  };
}

/// generated route for
/// [CreateNotePage]
class CreateNoteRoute extends PageRouteInfo<void> {
  const CreateNoteRoute({List<PageRouteInfo>? children})
      : super(
          CreateNoteRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateNoteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SigninPage]
class SigninRoute extends PageRouteInfo<void> {
  const SigninRoute({List<PageRouteInfo>? children})
      : super(
          SigninRoute.name,
          initialChildren: children,
        );

  static const String name = 'SigninRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ViewNotePage]
class ViewNoteRoute extends PageRouteInfo<ViewNoteRouteArgs> {
  ViewNoteRoute({
    Key? key,
    required Note note,
    List<PageRouteInfo>? children,
  }) : super(
          ViewNoteRoute.name,
          args: ViewNoteRouteArgs(
            key: key,
            note: note,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewNoteRoute';

  static const PageInfo<ViewNoteRouteArgs> page =
      PageInfo<ViewNoteRouteArgs>(name);
}

class ViewNoteRouteArgs {
  const ViewNoteRouteArgs({
    this.key,
    required this.note,
  });

  final Key? key;

  final Note note;

  @override
  String toString() {
    return 'ViewNoteRouteArgs{key: $key, note: $note}';
  }
}
