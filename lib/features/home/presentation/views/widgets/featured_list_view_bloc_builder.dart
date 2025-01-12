import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/featured_movies_cubit/featured_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view.dart';

class FeaturedListViewBlocBuilder extends StatelessWidget {
  const FeaturedListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedMoviesCubit, FeaturedMoviesState>(
      builder: (context, state) {
        if (state is FeaturedMoviesSuccess) {
          return FeaturedListView(featuredMovies: state.movies,);
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
