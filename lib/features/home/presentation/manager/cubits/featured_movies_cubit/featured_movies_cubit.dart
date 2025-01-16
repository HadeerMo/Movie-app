import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_featured_movies_use_case.dart';

part 'featured_movies_state.dart';

class FeaturedMoviesCubit extends Cubit<FeaturedMoviesState> {
  FeaturedMoviesCubit(this.featuredMoviesUseCase)
      : super(FeaturedMoviesInitial());

  final FetchFeaturedMoviesUseCase featuredMoviesUseCase;

  Future<void> fetchFeaturedMovies({int pageNum = 1}) async {
    if (pageNum == 1) {
      emit(FeaturedMoviesLoading());
    } else {
      emit(FeaturedMoviesPaginationLoading());
    }
    var result = await featuredMoviesUseCase.call(pageNum);
    result.fold((failure) {
      if (pageNum == 1) {
        emit(FeaturedMoviesFailure(errMsg: failure.msg));
      } else {
        emit(FeaturedMoviesPaginationFailure(errMsg: failure.msg));
      }
    }, (movies) {
      emit(FeaturedMoviesSuccess(movies: movies));
    });
  }
}
