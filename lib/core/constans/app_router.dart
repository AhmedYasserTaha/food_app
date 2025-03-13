import 'package:flutter/widgets.dart';
import 'package:food_app/featured/auth/login/presentation/login_view.dart';
import 'package:food_app/featured/auth/register/presentation/register_view.dart';
import 'package:food_app/featured/home/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/';
  static const kloginView = '/login_view';
  static const kregisterView = '/register_view';
  static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: khomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: kloginView,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: kregisterView,
        builder: (context, state) => RegisterView(),
      ),
    ],
  );
}
