part of 'featured_movies_cubit.dart';

@immutable
sealed class FeaturedMoviesState {}

final class FeaturedMoviesInitial extends FeaturedMoviesState {}

final class FeaturedMoviesLoading extends FeaturedMoviesState {}

final class FeaturedMoviesFailure extends FeaturedMoviesState {
  final String errMsg;

  FeaturedMoviesFailure({required this.errMsg});
}

final class FeaturedMoviesSuccess extends FeaturedMoviesState {
  final List<MovieEntity> movies;

  FeaturedMoviesSuccess({required this.movies});
}
