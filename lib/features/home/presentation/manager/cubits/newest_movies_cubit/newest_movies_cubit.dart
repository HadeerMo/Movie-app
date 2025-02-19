import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_newest_movies_use_case.dart';

part 'newest_movies_state.dart';

class NewestMoviesCubit extends Cubit<NewestMoviesState> {
  NewestMoviesCubit(this.fetchNewestMoviesUseCase)
      : super(NewestMoviesInitial());

  final FetchNewestMoviesUseCase fetchNewestMoviesUseCase;

  Future<void> fetchNewestMovies({int pageNum = 1}) async {
if (pageNum == 1) {
      emit(NewestMoviesLoading());
    } else {
      emit(NewestMoviesPaginationLoading());
    }
    var result = await fetchNewestMoviesUseCase.call(pageNum);

    result.fold((failure) {
      if (pageNum == 1) {
        emit(NewestMoviesFailure(errMsg: failure.msg));
      } else {
        emit(NewestMoviesPaginationFailure(errMsg: failure.msg));
      }
    }, (movies) {
      emit(NewestMoviesSuccess(movies: movies));
    });
  }
}
