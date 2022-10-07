class Movie {
  final int rate;
  final String name;
  final int duration;
  final String synopsis;
  final String thumbImage;
  final List<String> genres;
  final DateTime releaseDate;

  Movie({
    required this.rate,
    required this.name,
    required this.duration,
    required this.synopsis,
    required this.thumbImage,
    required this.genres,
    required this.releaseDate,
  });
}
