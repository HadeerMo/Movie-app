import 'package:flutter/material.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_details_appbar.dart';
import 'package:movie_app/features/home/presentation/views/widgets/more_movie_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_details_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key, required this.movie});
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                const CustomAppbarForDetails(),
                MovieDetailsSection(movie:movie),
                const SizedBox(
                  height: 12,
                ),
                MovieRate(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rate: movie.rating??0,
                ),
                const SizedBox(
                  height: 30,
                ),
                const BookAction(),
                const Expanded(
                  //to let MoreMovieListView always in the bottom..
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const MoreMovieSection(), //must be in the bottom of screan
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
