import 'package:dartz/dartz.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/domain/repos/home_repo.dart';

class FetchMoreSimilarUseCase {
  final HomeRepo homeRepo;

  FetchMoreSimilarUseCase({required this.homeRepo});
  Future<Either<Failure, List<MovieEntity>>> call(
      {int pageNum = 1, required String gener}) async {
    return await homeRepo.fetchMoreSimilarMovies(pageNum: pageNum,gener: gener);
  }
}
