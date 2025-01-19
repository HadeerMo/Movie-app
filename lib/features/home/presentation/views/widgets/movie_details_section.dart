import 'package:flutter/material.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class MovieDetailsSection extends StatelessWidget {
  const MovieDetailsSection({
    super.key, required this.movie,
  });
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .35,
          child: CustomMovieImage(movie: movie,),
        ),
        const SizedBox(
          height: 25,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle26,
        ),
        const SizedBox(
          height: 3,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
