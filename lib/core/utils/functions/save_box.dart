import 'package:hive/hive.dart';
import 'package:movie_app/core/entities/movie_entity.dart';

void saveBoxData(List<MovieEntity> movies, String boxName) {
  var box = Hive.box<MovieEntity>(boxName); //store data in local database (Caching data)
  box.addAll(movies);
}
