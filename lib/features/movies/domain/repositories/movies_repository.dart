import 'package:dartz/dartz.dart';
import 'package:flutter_movies_app/features/movies/domain/entities/movies.dart';
import 'package:flutter_movies_app/features/movies/domain/failures/movies_failure.dart';

abstract class MoviesRepository {
  Future<Either<MoviesFailure, List<Movie>>> getMovies();
}
