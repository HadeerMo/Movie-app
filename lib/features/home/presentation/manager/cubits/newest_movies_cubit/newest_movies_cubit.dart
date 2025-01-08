import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_newest_movies_use_case.dart';

part 'newest_movies_state.dart';

class NewestMoviesCubit extends Cubit<NewestMoviesState> {
  NewestMoviesCubit(this.fetchNewestMoviesUseCase)
      : super(NewestMoviesInitial());

  final FetchNewestMoviesUseCase fetchNewestMoviesUseCase;

  Future<void> fetchNewestMovies() async {
    emit(NewestMoviesLoading());

    var result = await fetchNewestMoviesUseCase.call();
    result.fold((failure) {
      emit(
        NewestMoviesFailure(errMsg: failure.msg),
      );
    }, (movies) {
      emit(
        NewestMoviesSuccess(movies: movies),
      );
    });
  }
}
