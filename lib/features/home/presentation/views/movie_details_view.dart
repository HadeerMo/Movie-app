import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_details_body.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MovieDetailsBody(),
      ),
    );
  }
}
