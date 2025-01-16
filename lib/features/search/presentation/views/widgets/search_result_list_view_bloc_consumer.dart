import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/widgets/error_msg.dart';
import 'package:movie_app/features/home/presentation/views/widgets/newest_movies_list_view_loading_indicator.dart';
import 'package:movie_app/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:movie_app/features/search/presentation/views/widgets/search_result_list_view.dart';

class SearchResultListViewBlocConsumer extends StatefulWidget {
  const SearchResultListViewBlocConsumer({
    super.key,
  });

  @override
  State<SearchResultListViewBlocConsumer> createState() =>
      _SearchResultListViewBlocConsumerState();
}

class _SearchResultListViewBlocConsumerState
    extends State<SearchResultListViewBlocConsumer> {
  List<MovieEntity> allMovies = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state is SearchSuccess) {
          allMovies.addAll(state.movies);
        }
      },
      builder: (context, state) {
        if (state is SearchSuccess ||
            state is SearchLoadingPagination ||
            state is SearchFailurePagination) {
          return SearchResultListView(movies: allMovies);
        }
        else if(state is SearchSearchMovie){
          return SearchResultListView(movies: state.movies);
        }
         else if (state is SearchFailure) {
          return ErrorMsg(errorMsg: state.errMsg);
        } else {
          return const NewestMoviesListViewLoadingIndecator();
        }
      },
    );
  }
}
