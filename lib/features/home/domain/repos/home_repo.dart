import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieEntity>>>
      fetchFeaturedMovies(); //unimplemented method

  Future<Either<Failure, List<MovieEntity>>>
      fetchNewsMovies(); //unimplemented method
}
