import 'package:flutter/material.dart';

class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
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
        ),
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
    );
  }
}
