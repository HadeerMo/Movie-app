import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_details_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.state});
final GoRouterState state;

  @override
  Widget build(BuildContext context) {
     final movie = state.extra as MovieEntity;
    return SafeArea(
      child: Scaffold(
        body: MovieDetailsBody(movie: movie,),
      ),
    );
  }
}
