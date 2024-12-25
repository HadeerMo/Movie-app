import 'package:go_router/go_router.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';
import 'package:movie_app/features/home/presentation/views/movie_details_view.dart';
import 'package:movie_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const homePath = '/Home';
  static const detailsPath = '/details';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homePath,
        builder: (context, state) => const HomeView(),
      ),
        GoRoute(
        path: detailsPath,
        builder: (context, state) => const MovieDetailsView(),
      ),
    ],
  );
}
