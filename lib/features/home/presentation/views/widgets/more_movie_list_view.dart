import 'package:flutter/material.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class MoreMovieListView extends StatelessWidget {
  const MoreMovieListView({
    super.key, required this.movies,
  });
final List<MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomMovieImage(movie: movies[index]),
            );
          }),
    );
  }
}
