import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:movie_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeCustomAppBar(),
            const FeaturedListView(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Best Seller',
              style: Styles.textStyle18,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BestSellerListViewItem();
              },
            )
          ],
        ),
      ),
    );
  }
}
