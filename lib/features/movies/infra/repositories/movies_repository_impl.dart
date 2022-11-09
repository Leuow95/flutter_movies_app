import 'package:flutter_movies_app/features/movies/domain/failures/movies_failure.dart';
import 'package:flutter_movies_app/features/movies/domain/entities/movies.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_movies_app/features/movies/domain/repositories/movies_repository.dart';
import 'package:flutter_movies_app/features/movies/infra/datasources/api_tmdb.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final ApiMoviesDataSource dataSource;

  MoviesRepositoryImpl(this.dataSource);
  @override
  Future<Either<MoviesFailure, List<Movie>>> getMovies() async {
    try {
      final response = await dataSource.getPopularMovies();

      return response.fold(
        (failure) => left(DataSourceError(failure.toString())),
        (movies) => right(movies),
      );
    } on DataSourceError catch (e) {
      return Left(e);
    } catch (e) {
      return Left(DataSourceError(e.toString()));
    }
  }
}
