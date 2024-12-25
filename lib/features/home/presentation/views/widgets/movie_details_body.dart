import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_details_appbar.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              style: Styles.textStyle16.copyWith(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const MovieRate(mainAxisAlignment: MainAxisAlignment.center,)
        ],
      ),
    );
  }
}
