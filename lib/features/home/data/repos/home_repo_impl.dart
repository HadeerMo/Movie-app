import 'package:dartz/dartz.dart';
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
  Future<Either<Failure, List<MovieEntity>>> fetchFeaturedMovies() async {
    try {
      var cachedMovies = homeLocalDataSource.fetchFeaturedMovies();
      if (cachedMovies.isNotEmpty) {
        return Right(cachedMovies);
      }
      var movies = await homeRemoteDataSource.fetchFeaturedMovies();
      return Right(movies);
    } on Exception catch (e) {
      return Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchNewsMovies() async{
    try {
      var cachedMovies = homeLocalDataSource.fetchNewsMovies();
      if (cachedMovies.isNotEmpty) {
        return Right(cachedMovies);
      }
      var movies = await homeRemoteDataSource.fetchNewsMovies();
      return Right(movies);
    } on Exception catch (e) {
      return Left(Failure());
    }
  }
}
