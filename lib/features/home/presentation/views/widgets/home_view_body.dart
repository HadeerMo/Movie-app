import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles.dart';
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 114,
          width: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://m.media-amazon.com/images/M/MV5BY2RjN2M3NmMtNGJhZS00NGEwLWE4NTktOGQ5MDQ4MjZlZGJmXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_UY268_CR1,0,182,268_AL_.jpg'),
                fit: BoxFit.fill),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
         Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Text(
                'Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        )
      ],
    );
  }
}
