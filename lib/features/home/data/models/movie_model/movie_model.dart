import 'package:movie_app/features/home/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  List<String>? imageurl;
  List<String>? genre;
  String? imdbid;
  String? title;
  double? imdbrating;
  int? released;
  String? synopsis;
  String? type;

  MovieModel({
    this.imageurl,
    this.genre,
    this.imdbid,
    this.title,
    this.imdbrating,
    this.released,
    this.synopsis,
    this.type,
  }) : super(
          id: imdbid!,
          image:  (imageurl!.isNotEmpty)? imageurl[0] : '',
          movieTitle: title!,
          kind: genre,
          releasedYear: released,
          rating: imdbrating,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        imageurl: (json['imageurl'] as List<dynamic>?)?.map((imageUrl) => imageUrl.toString()).toList(),
        genre: (json['genre'] as List<dynamic>?)?.map((genre) => genre.toString()).toList(),
        imdbid: json['imdbid'] as String?,
        title: json['title'] as String?,
        imdbrating: (json['imdbrating'] as num?)?.toDouble(),
        released: json['released'] as int?,
        synopsis: json['synopsis'] as String?,
        type: json['type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'imageurl': imageurl,
        'genre': genre,
        'imdbid': imdbid,
        'title': title,
        'imdbrating': imdbrating,
        'released': released,
        'synopsis': synopsis,
        'type': type,
      };
}
