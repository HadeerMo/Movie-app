import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/functions/error_snackbar.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/featured_movies_cubit/featured_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view.dart';

class FeaturedListViewBlocConsumer extends StatefulWidget {
  const FeaturedListViewBlocConsumer({
    super.key,
  });

  @override
  State<FeaturedListViewBlocConsumer> createState() =>
      _FeaturedListViewBlocConsumerState();
}

class _FeaturedListViewBlocConsumerState
    extends State<FeaturedListViewBlocConsumer> {
  List<MovieEntity> allMovies = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedMoviesCubit, FeaturedMoviesState>(
      listener: (context, state) {
        if (state is FeaturedMoviesSuccess) {
          allMovies.addAll(state.movies);
        }
        if (state is FeaturedMoviesPaginationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            buildErrorSnackBar(state.errMsg),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedMoviesSuccess ||
            state is FeaturedMoviesPaginationLoading ||
            state is FeaturedMoviesPaginationFailure) {
          return FeaturedListView(
            featuredMovies: allMovies,
          );
        } else if (state is FeaturedMoviesFailure) {
          return Text(
            state.errMsg,
            style: const TextStyle(color: Colors.red),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
