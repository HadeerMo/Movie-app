import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/newest_movies_cubit/newest_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_item.dart';

class NewestMoviesList extends StatefulWidget {
  const NewestMoviesList({
    super.key,
    required this.movies,
  });
  final List<MovieEntity> movies;

  @override
  State<NewestMoviesList> createState() => _NewestMoviesListState();
}

class _NewestMoviesListState extends State<NewestMoviesList> {
  late ScrollController _scrollController;
  int nextPage = 2;
  bool isLoading = false;
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
        await BlocProvider.of<NewestMoviesCubit>(context)
            .fetchNewestMovies(pageNum: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.movies.length,
      itemBuilder: (context, index) {
        return MovieListViewItem(
          movie: widget.movies[index],
        );
      },
    );
  }
}
