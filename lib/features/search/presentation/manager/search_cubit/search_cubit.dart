import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/search/domain/use_cases/fetch_searched_movies_use_case.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.fetchSearchedMoviesUseCase) : super(SearchInitial());
  final FetchSearchedMoviesUseCase fetchSearchedMoviesUseCase;
  Future<void> fetchSearchedMovies(
      {int pageNum = 1, String search = ''}) async {
    if (pageNum == 1) {
      emit(SearchLoading());
    } else {
      emit(SearchLoadingPagination());
    }
    var result = await fetchSearchedMoviesUseCase.call(pageNum, search);
    result.fold((failure) {
      if (pageNum == 1) {
        emit(SearchFailure(errMsg: failure.msg));
      } else {
        emit(SearchFailurePagination(errMsg: failure.msg));
      }
    }, (movies) {
      if (search != '') {
        emit(SearchSearchMovie(movies: movies));
      }
      else{
      emit(SearchSuccess(movies: movies));
      }
    });
  }
}
