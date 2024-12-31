import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const MovieListViewItem();
      },
    );
  }
}
