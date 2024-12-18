import 'package:flutter/material.dart';
import 'package:movie_app/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
        slidingAnimation = Tween<Offset>(begin: const Offset(0, -7), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Movivo',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 70,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Source_Code_Pro',
          ),
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}


