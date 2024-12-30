
import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_cases/use_case.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/repos/home_repo.dart';

class FetchNewestMoviesUseCase extends UseCase<List<MovieEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestMoviesUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<MovieEntity>>> call ([NoParam? param]) async { //optinal paramter
  
    return await homeRepo.fetchNewsMovies();
  }

  //if you do not have to use 'use case' so don't use it!
}