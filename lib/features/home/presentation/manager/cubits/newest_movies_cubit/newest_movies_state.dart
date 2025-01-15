part of 'newest_movies_cubit.dart';

@immutable
sealed class NewestMoviesState {}

final class NewestMoviesInitial extends NewestMoviesState {}

final class NewestMoviesLoading extends NewestMoviesState {}

final class NewestMoviesPaginationLoading extends NewestMoviesState {}

final class NewestMoviesFailure extends NewestMoviesState {
  final String errMsg;

  NewestMoviesFailure({required this.errMsg});
}

final class NewestMoviesPaginationFailure extends NewestMoviesState {
    final String errMsg;

  NewestMoviesPaginationFailure({required this.errMsg});
}

final class NewestMoviesSuccess extends NewestMoviesState {
  final List<MovieEntity> movies;

  NewestMoviesSuccess({required this.movies});
}
