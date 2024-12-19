import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeCustomAppBar(),
        FeaturedListView(),
      ],
    );
  }
}

