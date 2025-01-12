import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view_bloc_builder.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_custom_appbar.dart';
import 'package:movie_app/features/home/presentation/views/widgets/newest_movies_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
              left: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeCustomAppBar(),
                FeaturedListViewBlocBuilder(),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Newest Movies',
                  style: Styles.textStyle18,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: NewestMoviesListBlocBuilder(),
          ),
        ),
        // SliverToBoxAdapter(
        //   child: SizedBox(
        //           height:30,
        //         ),
        // )
      ],
    );
  }
}
