import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/custom_fading_widget.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item_loading_indicator.dart';

class NewestMoviesListViewLoadingIndecator extends StatelessWidget {
  const NewestMoviesListViewLoadingIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const MovieItemLoadingIndicator();
        },
      ),
    );
    ;
  }
}
