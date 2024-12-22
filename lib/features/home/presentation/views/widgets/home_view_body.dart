import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeCustomAppBar(),
          FeaturedListView(),
          SizedBox(
            height: 40,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItem()
        ],
      ),
    );
  }
}


