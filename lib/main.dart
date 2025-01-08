import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/core/utils/functions/setup_service_locator.dart';
import 'package:movie_app/core/utils/simple_bloc_observer.dart';
import 'package:movie_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_featured_movies_use_case.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_newest_movies_use_case.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/featured_movies_cubit/featured_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/newest_movies_cubit/newest_movies_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<MovieEntity>(kfeaturedBox);
  await Hive.openBox<MovieEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedMoviesCubit(
            FetchFeaturedMoviesUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          );
        }),
        BlocProvider(create: (context) {
          return NewestMoviesCubit(
            FetchNewestMoviesUseCase(
              getIt.get<HomeRepoImpl>(),
            ),
          );
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
