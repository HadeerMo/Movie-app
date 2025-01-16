import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem({
    super.key, required this.movie,
  });
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.detailsPath);
      },
      child: Stack(
        children: [
          CustomMovieImage(movie: movie,),
          const Positioned(
            bottom: 7,
            right: 7,
            child: Icon(
              Icons.play_circle_outline,
              color: Color.fromARGB(255, 182, 181, 181),
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
