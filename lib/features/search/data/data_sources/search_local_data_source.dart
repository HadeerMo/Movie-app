import 'package:hive/hive.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/entities/movie_entity.dart';

abstract class SearchLocalDataSource {
  List<MovieEntity> fetchSearchedMovies({int pageNum = 1, String search = ''});
}

class SearchLocalDataSourceImpl extends SearchLocalDataSource {
  @override
  List<MovieEntity> fetchSearchedMovies({int pageNum = 1, String search = ''}) {
    int startIndex =
        (pageNum - 1) * 50; // 0, 50, 100, 150 , ... (Start) => in the list
    int endIndex = pageNum * 50; //50, 100, 150, ... (End) => out of the list
    var box = Hive.box<MovieEntity>(kSearchBox);
    int length = box.values.length;
    if (startIndex >= length) {
      return [];
    }
    if (endIndex > length) {
      //(endIndex > length) => check that as if the chashed list from (0 to 70) and startIndex = 50, endIndex = 100 "that will throw exeption when i return sublist(50,100)"
      endIndex == length;
    }
    
    List<MovieEntity> movies =
        box.values.toList().sublist(startIndex, endIndex);

    movies = movies.where((m) => m.movieTitle.toUpperCase().contains(search.toUpperCase())).toList();
    return movies; //(0:49), (50:99), (100:149), ...
  }
}
