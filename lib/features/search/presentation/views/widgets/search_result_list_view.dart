import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Text('data');
        // const MovieListViewItem();
      },
    );
  }
}
