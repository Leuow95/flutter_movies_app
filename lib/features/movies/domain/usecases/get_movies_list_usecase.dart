import 'package:dartz/dartz.dart';
import 'package:flutter_movies_app/features/movies/domain/entities/movies.dart';
import 'package:flutter_movies_app/features/movies/domain/failures/movies_failure.dart';
import 'package:flutter_movies_app/features/movies/domain/repositories/products_repository.dart';

abstract class GetMoviesListUsecase {
  Future<Either<MoviesFailure, List<Movie>>> call();
}

class GetMoviesListUsecaseImpl implements GetMoviesListUsecase {
  final MoviesRepository repository;

  GetMoviesListUsecaseImpl(this.repository);

  @override
  Future<Either<MoviesFailure, List<Movie>>> call() async {
    final response = await repository.getMovies();
    return response;
  }
}
