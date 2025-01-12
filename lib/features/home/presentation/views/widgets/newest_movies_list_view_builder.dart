
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/newest_movies_cubit/newest_movies_cubit.dart';

import 'newest_movies_list_view.dart';

class NewestMoviesListBlocBuilder extends StatelessWidget {
  const NewestMoviesListBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestMoviesCubit, NewestMoviesState>(
      builder: (context, state) {
        if (state is NewestMoviesSuccess) {
          return NewestMoviesList(
            movies: state.movies,
          );
        } else if (state is NewestMoviesFailure) {
          return Text(state.errMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
