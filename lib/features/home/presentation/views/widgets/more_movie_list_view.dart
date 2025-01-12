import 'package:flutter/material.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_movie_image.dart';

class MoreMovieListView extends StatelessWidget {
  const MoreMovieListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child:Text('data')
              //  CustomMovieImage(movie: MovieEntity(id: 1),),
            );
          }),
    );
  }
}
