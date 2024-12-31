import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeLocalDataSource {
  List<MovieEntity> fetchFeaturedMovies(); //unimplemented method

  List<MovieEntity> fetchNewsMovies(); //unimplemented method
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<MovieEntity> fetchFeaturedMovies() {
    // TODO: implement fetchFeaturedMovies
    throw UnimplementedError();
  }

  @override
  List<MovieEntity> fetchNewsMovies() {
    // TODO: implement fetchNewsMovies
    throw UnimplementedError();
  }

}