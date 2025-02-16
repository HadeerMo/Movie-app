import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/more_samilar_cubit/more_samilar_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/more_movie_list_view.dart';

class MoreMoviesListBlocConsumer extends StatelessWidget {
  const MoreMoviesListBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoreSamilarCubit, MoreSamilarState>(
      builder: (context, state) {
        if (state is MoreSamilarSuccess) {
          return MoreMovieListView(
            movies: state.movies,
          );
        } else if (state is MoreSamilarFailure) {
          return ErrorWidget(state.errMsg);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}