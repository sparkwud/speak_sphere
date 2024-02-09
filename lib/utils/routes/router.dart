import 'package:go_router/go_router.dart';
import 'package:speak_sphere/features/home/views/home_screen.dart';
import 'package:speak_sphere/features/home/views/interests_screen.dart';
import 'package:speak_sphere/features/splash/views/splash_screen.dart';

import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: <RouteBase>[
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.interest,
      builder: (context, state) => const InterestsScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
