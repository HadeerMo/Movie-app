import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/entities/movie_entity.dart';

Future<void> initAndOpenHiveBoxes() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MovieEntityAdapter());
  await Hive.openBox<MovieEntity>(kfeaturedBox);
  await Hive.openBox<MovieEntity>(kNewestBox);
  await Hive.openBox<MovieEntity>(kSearchBox);
  await Hive.openBox<MovieEntity>(kMoreSimilarBox);
}