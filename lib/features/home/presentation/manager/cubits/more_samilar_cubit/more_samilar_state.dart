part of 'more_samilar_cubit.dart';

@immutable
sealed class MoreSamilarState {}

final class MoreSamilarInitial extends MoreSamilarState {}

final class MoreSamilarLoading extends MoreSamilarState {}
final class MoreSamilarPaginationLoading extends MoreSamilarState {}
final class MoreSamilarPaginationFailure extends MoreSamilarState {
    final String errMsg;

  MoreSamilarPaginationFailure({required this.errMsg});
}

final class MoreSamilarFailure extends MoreSamilarState {
  final String errMsg;

  MoreSamilarFailure({required this.errMsg});
}

final class MoreSamilarSuccess extends MoreSamilarState {
  final List<MovieEntity> movies;

  MoreSamilarSuccess({required this.movies});
}
