import 'package:flutter/material.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item.dart';

class NewestMoviesList extends StatelessWidget {
  const NewestMoviesList({
    super.key, required this.movies,
  });
  final List<MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return MovieListViewItem(movie: movies[index],);
      },
    );
  }
}
