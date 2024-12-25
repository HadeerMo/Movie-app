import 'package:flutter/material.dart';

class CustomMovieImage extends StatelessWidget {
  const CustomMovieImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://m.media-amazon.com/images/M/MV5BY2RjN2M3NmMtNGJhZS00NGEwLWE4NTktOGQ5MDQ4MjZlZGJmXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_UY268_CR1,0,182,268_AL_.jpg'),
          ),
        ),
      ),
    );
  }
}