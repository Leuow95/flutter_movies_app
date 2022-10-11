class Movie {
  final int rate;
  final String name;
  final String synopsis;
  final String thumbImage;
  final List<int> genres;
  final DateTime releaseDate;

  Movie({
    required this.rate,
    required this.name,
    required this.synopsis,
    required this.thumbImage,
    required this.genres,
    required this.releaseDate,
  });
}
