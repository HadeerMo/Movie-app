import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/repos/home_repo.dart';

class FetchFeaturedMoviesUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedMoviesUseCase(this.homeRepo);
  Future<Either<Failure, List<MovieEntity>>> fetchFeaturedMovies() {
    return homeRepo.fetchFeaturedMovies();
  }
  //if you does not need use case so don't use it
}
