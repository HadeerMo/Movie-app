import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/utils/functions/setup_service_locator.dart';
import 'package:movie_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_more_similar_use_case.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/more_samilar_cubit/more_samilar_cubit.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';
import 'package:movie_app/features/home/presentation/views/movie_details_view.dart';
import 'package:movie_app/features/search/presentation/views/search_view.dart';
import 'package:movie_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const homePath = '/Home';
  static const detailsPath = '/details';
  static const searchPath = '/search';
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
        builder: (context, state) => BlocProvider(
          create: (context) => MoreSamilarCubit(
            FetchMoreSimilarUseCase(
              homeRepo: getIt.get<HomeRepoImpl>(),
            ),
          ),
          child: MovieDetailsView(
            movie: state.extra as MovieEntity,
          ),
        ),
      ),
      GoRoute(
        path: searchPath,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
