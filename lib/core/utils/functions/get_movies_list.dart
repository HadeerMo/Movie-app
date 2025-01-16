  import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/models/movie_model/movie_model.dart';

List<MovieEntity> getMoviesList(Map<String, dynamic> data) {
    List<MovieEntity> movies = [];
    for (var movie in data["results"]) {
      movies.add(
          MovieModel.fromJson(movie)); // movieModel extends from movieEntity
    }
    return movies;
  }