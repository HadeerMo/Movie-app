import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Movivo',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 240, 205, 9),
            fontFamily: 'Source_Code_Pro',
          ),
        ),
        Text(
          '\'\'Discover Your Next Favorite Movie\'\'',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
