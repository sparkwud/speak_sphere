import 'package:go_router/go_router.dart';
import 'package:speak_sphere/features/home/views/screens/bottom_nav_bar.dart';
import 'package:speak_sphere/features/home/views/screens/coming_soon_screen.dart';
import 'package:speak_sphere/features/home/views/screens/home_screen.dart';
import 'package:speak_sphere/features/home/views/screens/interests_screen.dart';
import 'package:speak_sphere/features/home/views/screens/speaking_screen.dart';
import 'package:speak_sphere/features/home/views/screens/streaks_screen.dart';
import 'package:speak_sphere/features/lessons/views/screens/lesson_screen.dart';
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
    GoRoute(
      path: AppRoutes.navBar,
      builder: (context, state) => const BottomNavBar(),
    ),
    GoRoute(
      path: AppRoutes.comingSoon,
      builder: (context, state) => const ComingSoonScreen(),
    ),
    GoRoute(
      path: AppRoutes.lesson,
      builder: (context, state) => const LessonScreen(),
    ),
    GoRoute(
      path: AppRoutes.streaks,
      builder: (context, state) => const StreaksScreen(),
    ),
    GoRoute(
      path: AppRoutes.speaking,
      builder: (context, state) => const SpeakingScreen(),
    ),
  ],
);
