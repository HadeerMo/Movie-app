import 'package:dartz/dartz.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_cases/use_case.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/repos/home_repo.dart';

class FetchFeaturedMoviesUseCase extends UseCase<List<MovieEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedMoviesUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<MovieEntity>>> call([int param = 1]) async {
    //optinal paramter

    return await homeRepo.fetchFeaturedMovies(pageNum: param);
  }

  //if you do not have to use 'use case' so don't use it!
}
