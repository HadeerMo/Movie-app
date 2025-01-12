import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

class CustomMovieImage extends StatelessWidget {
  const CustomMovieImage({super.key, required this.movie});
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: CachedNetworkImage(
            imageUrl: movie.image ?? '',
            fit: BoxFit.fill,
          ),
        ),
        );
  }
}
