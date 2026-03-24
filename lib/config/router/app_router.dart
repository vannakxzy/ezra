import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
@LazySingleton()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(page: LoginRoute.page, initial: true),
        CustomRoute(page: CreateAccountRoute.page),
        CustomRoute(page: VerifyEmailCreateaccountRoute.page),
        CustomRoute(
          page: ScaffoldWithNavBarRoute.page,
          children: [
            CustomRoute(
                page: EventRoute.page,
                transitionsBuilder: (_, __, ___, child) => child,
                children: []),
            CustomRoute(
                page: BandRoute.page,
                transitionsBuilder: (_, __, ___, child) => child),
            CustomRoute(
                page: MusicsRoute.page,
                transitionsBuilder: (_, __, ___, child) => child),
            CustomRoute(
                page: FavoriteRoute.page,
                transitionsBuilder: (_, __, ___, child) => child),
            CustomRoute(
                page: ProfileRoute.page,
                transitionsBuilder: (_, __, ___, child) => child),
          ],
        ),
        CustomRoute(
            page: EventDetailRoute.page,
            transitionsBuilder: (_, __, ___, child) => child),
        CustomRoute(
            page: MusicsDetailRoute.page,
            transitionsBuilder: (_, __, ___, child) => child),
        CustomRoute(
            page: SettingRoute.page,
            transitionsBuilder: (_, __, ___, child) => child),
        CustomRoute(
            page: CreatebandRoute.page,
            transitionsBuilder: (_, __, ___, child) => child)
      ];
}
