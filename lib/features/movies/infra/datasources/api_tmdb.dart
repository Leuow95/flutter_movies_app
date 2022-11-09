import 'package:dartz/dartz.dart';
import 'package:flutter_movies_app/features/movies/infra/models/movie_model.dart';

import '../../domain/failures/movies_failure.dart';

abstract class ApiMoviesDataSource {
  Future<Either<DataSourceError, List<MovieModel>>> getPopularMovies();
}
