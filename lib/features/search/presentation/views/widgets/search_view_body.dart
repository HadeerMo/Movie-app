import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: SearchTextField(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: SearchResultListView(),
          ),
        )
      ],
    );
  }
}
