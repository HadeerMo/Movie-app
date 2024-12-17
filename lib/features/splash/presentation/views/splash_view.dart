import 'package:flutter/material.dart';
import 'package:movie_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 47, 47, 85),
        body: SplashViewBody(),
      ),
    );
  }
}
