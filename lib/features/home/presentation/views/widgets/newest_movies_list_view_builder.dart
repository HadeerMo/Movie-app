import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/newest_movies_cubit/newest_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/newest_movies_list_view_loading_indicator.dart';

import 'newest_movies_list_view.dart';

class NewestMoviesListBlocBuilder extends StatefulWidget {
  const NewestMoviesListBlocBuilder({
    super.key,
  });

  @override
  State<NewestMoviesListBlocBuilder> createState() =>
      _NewestMoviesListBlocBuilderState();
}

class _NewestMoviesListBlocBuilderState
    extends State<NewestMoviesListBlocBuilder> {
  List<MovieEntity> allMovies = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestMoviesCubit, NewestMoviesState>(
      listener: (context, state) {
        if (state is NewestMoviesSuccess) {
          allMovies.addAll(state.movies);
        }
      },
      builder: (context, state) {
        if (state is NewestMoviesSuccess ||
            state is NewestMoviesPaginationLoading ||
            state is NewestMoviesPaginationFailure) {
          return NewestMoviesList(
            movies: allMovies,
          );
        } else if (state is NewestMoviesFailure) {
          return Text(state.errMsg);
        } else {
          return const NewestMoviesListViewLoadingIndecator();
        }
      },
    );
  }
}
