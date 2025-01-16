import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/search/data/data_sources/search_local_data_source.dart';
import 'package:movie_app/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:movie_app/features/search/domain/repos/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchLocalDataSource searchLocalDataSource;
  final SearchRemoteDataSource searchRemoteDataSource;

  SearchRepoImpl(
      {required this.searchLocalDataSource,
      required this.searchRemoteDataSource});
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchSearchedMovies(
      {int pageNum = 1, String search = ''}) async {
    try {
      List<MovieEntity> movies;
      movies = searchLocalDataSource.fetchSearchedMovies(pageNum: pageNum, search:search);
      if (movies.isNotEmpty) {
        return Right(movies);
      }
      movies =
          await searchRemoteDataSource.fetchSearchedMovies(pageNum: pageNum, search:search);
      return Right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(msg: e.toString()));
    }
  }
}
