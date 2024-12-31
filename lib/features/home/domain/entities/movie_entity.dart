class MovieEntity {
  final String id;
  final String? image;
  final String movieTitle;
  final List<String>? kind;
  final int? releasedYear;
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
