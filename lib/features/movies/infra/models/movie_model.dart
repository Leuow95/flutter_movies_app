import 'package:flutter_movies_app/features/movies/domain/entities/movies.dart';

class MovieModel extends Movie {
  MovieModel({
    required super.rate,
    required super.name,
    required super.synopsis,
    required super.thumbImage,
    required super.genres,
    required super.releaseDate,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      rate: json["vote_average"],
      name: json["title"],
      synopsis: json["overview"],
      thumbImage: json["poster_path"],
      genres: json["genre_ids"],
      releaseDate: DateTime.parse(json["release_date"]),
    );
  }
}
