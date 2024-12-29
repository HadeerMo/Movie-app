import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeRepo {

  Future<List<MovieEntity>> fetchFeaturedMovies();  //unimplemented method

  Future<List<MovieEntity>> fetchNewsMovies();  //unimplemented method
  
}
