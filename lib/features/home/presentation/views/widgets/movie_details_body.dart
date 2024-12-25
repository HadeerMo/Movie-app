import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_Movie_details_appbar.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          CustomAppbarForDetails(),
        ],
      ),
    );
  }
}

