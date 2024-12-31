import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeRemoteDataSource {
    Future<List<MovieEntity>>
      fetchFeaturedMovies(); //unimplemented method

  Future<List<MovieEntity>>
      fetchNewsMovies(); //unimplemented method
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<MovieEntity>> fetchFeaturedMovies() {
    // TODO: implement fetchFeaturedMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieEntity>> fetchNewsMovies() {
    // TODO: implement fetchNewsMovies
    throw UnimplementedError();
  }

}