import 'package:auto_route/auto_route.dart';
import 'package:roadwise/modules/onboarding/onboarding_screen.dart';
import 'package:roadwise/modules/onboarding/welcome_screen.dart';

import '../modules/splash/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: OnBoardingRoute.page,
        ),
        AutoRoute(
          page: WelcomeRoute.page,
        ),
      ];
}
