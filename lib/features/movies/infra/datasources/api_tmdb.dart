import 'package:flutter_movies_app/features/movies/infra/models/movie_model.dart';

abstract class ApiMoviesDataSource {
  Future<List<MovieModel>> getPopularMovies();
}
