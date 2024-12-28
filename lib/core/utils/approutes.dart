import 'package:booklyapp/Features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash.dart';

import 'package:go_router/go_router.dart';

abstract class Approutes {
  static String kHomeRoute = '/homepage';
  static String kBookDetails = '/bookdetails';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Splash(),
    ),
    GoRoute(
      path: kHomeRoute,
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => const BookeDetailsView(),
    )
  ]);
}
