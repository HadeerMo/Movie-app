import 'package:movie_app/constants.dart';
import 'package:movie_app/core/entities/movie_entity.dart';
import 'package:movie_app/core/utils/api_service.dart';
import 'package:movie_app/core/utils/functions/get_movies_list.dart';
import 'package:movie_app/core/utils/functions/save_box.dart';

abstract class SearchRemoteDataSource {
  Future<List<MovieEntity>> fetchSearchedMovies(
      {int pageNum = 1, String search = ''});
}

class SearchRemoteDataSourseImpl extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourseImpl({required this.apiService});

  @override
  Future<List<MovieEntity>> fetchSearchedMovies(
      {int pageNum = 1, String search = ''}) async {
    var data = await apiService.get(
        endPoint:
            'advancedsearch?start_year=1970&end_year=2020&min_imdb=1&max_imdb=10&sort=highestrated&language=english&page=$pageNum');
    List<MovieEntity> movies = getMoviesList(data);
    if (search != '') {
      movies = movies.where((m) => m.movieTitle.toUpperCase().contains(search.toUpperCase())).toList();
    }
    saveBoxData(movies, kSearchBox);
    return movies;
  }
}
