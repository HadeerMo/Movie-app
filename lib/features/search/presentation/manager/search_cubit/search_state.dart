part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchFailure extends SearchState {
  final String errMsg;

  SearchFailure({required this.errMsg});
}

final class SearchSuccess extends SearchState {
  final List<MovieEntity> movies;

  SearchSuccess({required this.movies});
}

final class SearchLoading extends SearchState {}

final class SearchFailurePagination extends SearchState {
  final String errMsg;

  SearchFailurePagination({required this.errMsg});
}

final class SearchLoadingPagination extends SearchState {}

final class SearchSearchMovie extends SearchState {
    final List<MovieEntity> movies;

  SearchSearchMovie({required this.movies});
}
