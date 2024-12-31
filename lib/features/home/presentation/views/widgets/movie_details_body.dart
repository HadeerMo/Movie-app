import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_details_appbar.dart';
import 'package:movie_app/features/home/presentation/views/widgets/more_movie_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_details_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                CustomAppbarForDetails(),
                MovieDetailsSection(),
                SizedBox(
                  height: 12,
                ),
                MovieRate(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 30,
                ),
                BookAction(),
                Expanded(
                  //to let MoreMovieListView always in the bottom..
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                MoreMovieSection(), //must be in the bottom of screan
                SizedBox(
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
