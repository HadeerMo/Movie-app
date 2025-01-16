import 'package:dartz/dartz.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/core/use_cases/use_case.dart';
import 'package:movie_app/features/search/domain/repos/search_repo.dart';

class FetchSearchedMoviesUseCase extends UseCase<List<MovieEntity>, int> {
  final SearchRepo searchRepo;

  FetchSearchedMoviesUseCase({required this.searchRepo});
  @override
  Future<Either<Failure, List<MovieEntity>>> call([int param = 1,search = '']) async {
    return await searchRepo.fetchSearchedMovies(pageNum: param, search : search);
  }
}
