import 'package:our_love/modules/auth/presentation/pages/login.view.dart';
import 'package:our_love/modules/auth/presentation/pages/splash.view.dart';
import 'package:our_love/modules/auth/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:our_love/modules/root/presentation/pages/root.view.dart';
import 'package:our_love/modules/root/routes.dart';

final GoRouter router = GoRouter(
  initialLocation: RootRoutes.root,
  routes: <RouteBase>[
    GoRoute(
      path: RootRoutes.root,
      builder: (_, __) => const RootView(),
    ),
    GoRoute(
      path: AuthRoutes.splash,
      builder: (_, __) => const SplashView(),
    ),
    GoRoute(
      path: AuthRoutes.login,
      builder: (_, __) => const LoginView(),
    ),
  ],
);
