import 'package:hive/hive.dart';
part 'movie_entity.g.dart';
@HiveType(typeId: 0)
class MovieEntity {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String movieTitle;
  @HiveField(3)
  final List<String>? kind;
  @HiveField(4)
  final int? releasedYear;
  @HiveField(5)
  final double? rating;

  MovieEntity({
    required this.id,
    required this.image,
    required this.movieTitle,
    required this.kind,
    required this.releasedYear,
    required this.rating,
  });
}
