import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_details_appbar.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';
import 'package:movie_app/features/home/presentation/views/widgets/more_movie_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

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
                SizedBox(
                  height: MediaQuery.of(context).size.height * .35,
                  child: const CustomMovieImage(),
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
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const MovieRate(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                const BookAction(),
                const Expanded( //to let MoreMovieListView always in the bottom..
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const MoreMovieListView(), //must be in the bottom of screan
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
