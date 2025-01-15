import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image_loading_indicator.dart';

class FeaturedListViewLoadingIndicator extends StatelessWidget {
  const FeaturedListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CustomMovieImageLoadingIndicator(
              ),
            );
          }),
    );
  }
}