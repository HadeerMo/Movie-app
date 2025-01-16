import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_Result_list_view_bloc_consumer.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String searchMovie = "";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          child: SearchTextField(
            onChanged: (value) {
              searchMovie = value;
              BlocProvider.of<SearchCubit>(context)
                  .fetchSearchedMovies(search: searchMovie);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: SearchResultListViewBlocConsumer(),
          ),
        )
      ],
    );
  }
}
