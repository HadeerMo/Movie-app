import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item.dart';
import 'package:movie_app/features/search/presentation/manager/search_cubit/search_cubit.dart';

class SearchResultListView extends StatefulWidget {
  const SearchResultListView({
    super.key,
    required this.movies,
  });
  final List<MovieEntity> movies;

  @override
  State<SearchResultListView> createState() => _SearchResultListViewState();
}

class _SearchResultListViewState extends State<SearchResultListView> {
  late ScrollController _scrollController;
  bool isLoading = false;
  int nextPage = 2;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= .7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<SearchCubit>(context)
            .fetchSearchedMovies(pageNum: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.zero,
      itemCount: widget.movies.length,
      itemBuilder: (context, index) {
        return MovieListViewItem(movie: widget.movies[index]);
      },
    );
  }
}
