import 'package:auto_route/auto_route.dart';
import 'package:deeplink_tutorial/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CatFactsRoute.page,
          path: '/',
        ),
        AutoRoute(
          page: SingleFactRoute.page,
        ),
      ];
}
