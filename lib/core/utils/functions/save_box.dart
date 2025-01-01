import 'package:hive/hive.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

void saveBoxData(List<MovieEntity> movies, String boxName) {
  var box = Hive.box(boxName); //store data in local database (Caching data)
  box.addAll(movies);
}
