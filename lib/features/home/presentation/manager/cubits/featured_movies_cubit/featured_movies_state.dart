part of 'featured_movies_cubit.dart';

@immutable
sealed class FeaturedMoviesState {}

final class FeaturedMoviesInitial extends FeaturedMoviesState {}

final class FeaturedMoviesLoading extends FeaturedMoviesState {}
final class FeaturedMoviesPaginationLoading extends FeaturedMoviesState {}
final class FeaturedMoviesPaginationFailure extends FeaturedMoviesState {
    final String errMsg;

  FeaturedMoviesPaginationFailure({required this.errMsg});
}

final class FeaturedMoviesFailure extends FeaturedMoviesState {
  final String errMsg;

  FeaturedMoviesFailure({required this.errMsg});
}

final class FeaturedMoviesSuccess extends FeaturedMoviesState {
  final List<MovieEntity> movies;

  FeaturedMoviesSuccess({required this.movies});
}
