import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/use_cases/fetch_featured_movies_use_case.dart';

part 'featured_movies_state.dart';

class FeaturedMoviesCubit extends Cubit<FeaturedMoviesState> {
  FeaturedMoviesCubit(this.featuredMoviesUseCase)
      : super(FeaturedMoviesInitial());

  final FetchFeaturedMoviesUseCase featuredMoviesUseCase;

  Future<void> fetchFeaturedMovies({int pageNum = 1}) async {
    emit(FeaturedMoviesLoading());

    var result = await featuredMoviesUseCase.call(pageNum);

    result.fold((failure) {
      emit(
        FeaturedMoviesFailure(errMsg: failure.msg),
      );
    }, (movies) {
      emit(
        FeaturedMoviesSuccess(movies: movies),
      );
    });
  }
}
