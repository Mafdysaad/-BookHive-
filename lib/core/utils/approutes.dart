import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash.dart';

import 'package:go_router/go_router.dart';

abstract class Approutes {
  static String khomeRoute = '/homepage';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: khomeRoute,
      builder: (context, state) => const Home(),
    )
  ]);
}
