import 'package:flutter_movies_app/features/movies/domain/failures/movies_failure.dart';
import 'package:flutter_movies_app/features/movies/domain/entities/movies.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_movies_app/features/movies/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  @override
  Future<Either<MoviesFailure, List<Movie>>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }
}
