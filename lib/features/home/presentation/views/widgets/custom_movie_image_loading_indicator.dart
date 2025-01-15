import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/custom_fading_widget.dart';

class CustomMovieImageLoadingIndicator extends StatelessWidget {
  const CustomMovieImageLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Container(
              color: Colors.grey[50],
            )
            // CachedNetworkImage(
            //   imageUrl: movie.image ?? '',
            //   fit: BoxFit.fill,
            // ),
          ),
          ),
    );
  }
}