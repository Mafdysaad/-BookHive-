import 'package:booklyapp/Features/home/Data/models/book_model/book_modle.dart';
import 'package:booklyapp/Features/home/Data/repo/homerepoimplmantion.dart';

import 'package:booklyapp/Features/home/presentation/view_models/featrued_book_cubit/home_book_cubit.dart';
import 'package:booklyapp/Features/home/presentation/view_models/relevance_book_cubit/relevance_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentation/views/splash.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      builder: (context, state) => BlocProvider(
        create: (context) =>
            HomeCubit(getit.get<Homerepoimplmantion>())..fetchFeaturedBooks(),
        child: const Home(),
      ),
    ),
    GoRoute(
      path: kBookDetails,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            RelevanceCubitCubit(getit.get<Homerepoimplmantion>()),
        child: BookeDetailsView(
          bookModle: state.extra as BookModle,
        ),
      ),
    )
  ]);
}
