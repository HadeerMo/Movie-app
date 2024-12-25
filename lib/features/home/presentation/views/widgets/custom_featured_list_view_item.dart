import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.detailsPath);
      },
      child: const Stack(
        children: [
          CustomMovieImage(),
          Positioned(
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
