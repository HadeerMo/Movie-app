import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/api_service.dart';
import 'package:movie_app/core/utils/functions/save_box.dart';
import 'package:movie_app/features/home/data/models/movie_model/movie_model.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<MovieEntity>> fetchFeaturedMovies({int pageNum = 1}); //unimplemented method

  Future<List<MovieEntity>> fetchNewsMovies({int pageNum = 1}); //unimplemented method
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<MovieEntity>> fetchFeaturedMovies({int pageNum =1}) async {
    var data = await apiService.get(
        endPoint:
            'advancedsearch?start_year=1970&end_year=2019&min_imdb=1&max_imdb=10&language=english&sort=latest&page=$pageNum');

    List<MovieEntity> movies = getMoviesList(data);
    saveBoxData(movies, kfeaturedBox);
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchNewsMovies({int pageNum =1}) async {
    var data = await apiService.get(
        endPoint:
            'advancedsearch?start_year=2020&end_year=2020&min_imdb=1&max_imdb=10&language=english&sort=latest&page=$pageNum');
    List<MovieEntity> movies = getMoviesList(data);
    saveBoxData(movies, kNewestBox);
    return movies;
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
