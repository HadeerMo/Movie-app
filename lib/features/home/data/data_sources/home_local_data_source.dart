import 'package:hive/hive.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

abstract class HomeLocalDataSource {
  List<MovieEntity> fetchFeaturedMovies(); //unimplemented method

  List<MovieEntity> fetchNewsMovies(); //unimplemented method
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<MovieEntity> fetchFeaturedMovies() {
    var box = Hive.box<MovieEntity>(kfeaturedBox);
    return box.values.toList();
  }

  @override
  List<MovieEntity> fetchNewsMovies() {
    var box = Hive.box<MovieEntity>(kNewestBox);
    return box.values.toList();
  }
}
