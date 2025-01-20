import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/more_samilar_cubit/more_samilar_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_details_body.dart';

class MovieDetailsView extends StatefulWidget {
  const MovieDetailsView({super.key, required this.movie});
  final MovieEntity movie;
  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  @override
  void initState() {
    // final movie = widget.state.extra as MovieEntity;
    BlocProvider.of<MoreSamilarCubit>(context)
        .fetchMoreSimilarMovies(gener: widget.movie.kind![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final movie = widget.state.extra as MovieEntity;
    return SafeArea(
      child: Scaffold(
        body: MovieDetailsBody(
          movie: widget.movie,
        ),
      ),
    );
  }
}
