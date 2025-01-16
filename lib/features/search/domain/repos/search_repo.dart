import 'package:dartz/dartz.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/error/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<MovieEntity>>> fetchSearchedMovies(
      {int pageNum = 1, String search = ''}); //unimplemented method

}