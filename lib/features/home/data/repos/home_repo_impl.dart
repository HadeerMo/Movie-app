import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/core/error/failure.dart';
import 'package:movie_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:movie_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchFeaturedMovies({int pageNum=1}) async {
    try {
      List<MovieEntity> movies;
      movies = homeLocalDataSource.fetchFeaturedMovies();
      if (movies.isNotEmpty) {
        return Right(movies);
      }
      movies = await homeRemoteDataSource.fetchFeaturedMovies();
      return Right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(msg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchNewsMovies() async {
    try {
      List<MovieEntity> movies;
      movies = homeLocalDataSource.fetchNewsMovies();
      if (movies.isNotEmpty) {
        return Right(movies);
      }
      movies = await homeRemoteDataSource.fetchNewsMovies();
      return Right(movies);
    } on Exception catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(msg: e.toString()));
    }
  }
}
