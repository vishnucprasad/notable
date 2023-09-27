import 'package:auto_route/auto_route.dart';
import 'package:notable/presentation/pages/splash_page/splash_page.dart';

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
    ];
  }
}
