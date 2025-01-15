import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/manager/cubits/featured_movies_cubit/featured_movies_cubit.dart';
import 'package:movie_app/features/home/presentation/views/widgets/custom_featured_list_view_item.dart';

class FeaturedListView extends StatefulWidget {
  const FeaturedListView({super.key, required this.featuredMovies});
  final List<MovieEntity> featuredMovies;

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  late ScrollController _scrollController;
  int nextPage = 2;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= .7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedMoviesCubit>(context)
            .fetchFeaturedMovies(pageNum: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: widget.featuredMovies.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomFeaturedListViewItem(
                movie: widget.featuredMovies[index],
              ),
            );
          }),
    );
  }
}
