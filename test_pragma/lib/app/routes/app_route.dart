import 'package:go_router/go_router.dart';
import 'package:test_pragma/app/routes/routes_enum.dart';
import 'package:test_pragma/feature/detail/presentation/detail_page.dart';
import 'package:test_pragma/feature/landing/presentation/landing_page.dart';
import 'package:test_pragma/feature/splash/presentation/splash_page.dart';

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/splash',
    routes: <RouteBase>[
      GoRoute(
        path: '/splash',
        name: Routes.splash.name,
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: '/landing',
        name: Routes.landing.name,
        builder: (context, state) {
          return const LandingPage();
        },
      ),
      GoRoute(
        path: '/detail',
        name: Routes.detail.name,
        builder: (context, state) {
          return const DetailPage();
        },
      ),
    ],
  );
}
