import 'package:hive/hive.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeLocalDataSource {
  List<MovieEntity> fetchFeaturedMovies(
      {int pageNum = 1}); //unimplemented method

  List<MovieEntity> fetchNewsMovies({int pageNum = 1}); //unimplemented method
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<MovieEntity> fetchFeaturedMovies({int pageNum = 1}) {
    int startIndex =
        (pageNum - 1) * 50; // 0, 50, 100, 150 , ... (Start) => in the list
    int endIndex = pageNum * 50; //50, 100, 150, ... (End) => out of the list
    var box = Hive.box<MovieEntity>(kfeaturedBox);
    int length = box.values.length;
    if (startIndex >= length) {
      return [];
    }
    if (endIndex > length) {
      //(endIndex > length) => check that as if the chashed list from (0 to 70) and startIndex = 50, endIndex = 100 "that will throw exeption when i return sublist(50,100)"
      endIndex == length; 
    }
    return box.values
        .toList()
        .sublist(startIndex, endIndex); //(0:49), (50:99), (100:149), ...
  }

  @override
  List<MovieEntity> fetchNewsMovies({int pageNum = 1}) {
    int startIndex =
        (pageNum - 1) * 50; // 0, 50, 100, 150 , ... (Start) => in the list
    int endIndex = pageNum * 50; //50, 100, 150, ... (End) => out of the list
    var box = Hive.box<MovieEntity>(kNewestBox);
    int length = box.values.length;
    if (startIndex >= length) {
      return [];
    }
    if (endIndex > length) {
      //(endIndex > length) => check that as if the chashed list from (0 to 70) and startIndex = 50, endIndex = 100 "that will throw exeption when i return sublist(50,100)"
      endIndex == length; 
    }
    return box.values
        .toList()
        .sublist(startIndex, endIndex); //(0:49), (50:99), (100:149), ...
  }
}
