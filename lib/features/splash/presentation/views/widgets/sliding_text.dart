import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Discover Your Next Favorite Movie',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(255, 240, 205, 9),
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}