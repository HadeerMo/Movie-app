import 'package:movie_app/core/utils/api_service.dart';
import 'package:movie_app/features/home/data/models/movie_model/movie_model.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<MovieEntity>> fetchFeaturedMovies(); //unimplemented method

  Future<List<MovieEntity>> fetchNewsMovies(); //unimplemented method
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<MovieEntity>> fetchFeaturedMovies() async {
    var data = await apiService.get(
        endPoint:
            'advancedsearch?start_year=1970&end_year=2020&min_imdb=1&max_imdb=10&language=english&type=movie&sort=latest&page=1');

    List<MovieEntity> movies = getMoviesList(data);
    return movies;
  }



  @override
  Future<List<MovieEntity>> fetchNewsMovies() {
    // TODO: implement fetchNewsMovies
    throw UnimplementedError();
  }



    List<MovieEntity> getMoviesList(Map<String, dynamic> data) {
      List<MovieEntity> movies = [];
    for (var movie in data["results"]) {
      movies.add(
          MovieModel.fromJson(movie)); // movieModel extends from movieEntity
    }
    return movies;
  }
}
