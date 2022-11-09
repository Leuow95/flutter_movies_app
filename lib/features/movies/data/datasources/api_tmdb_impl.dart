import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_movies_app/features/movies/domain/failures/movies_failure.dart';
import 'package:flutter_movies_app/features/movies/infra/models/movie_model.dart';
import 'package:flutter_movies_app/utils/api_constants.dart';

import '../../infra/datasources/api_tmdb.dart';

class ApiMoviesDataSourceImpl implements ApiMoviesDataSource {
  final Dio dio;

  ApiMoviesDataSourceImpl(this.dio);
  @override
  Future<Either<DataSourceError, List<MovieModel>>> getPopularMovies() async {
    try {
      final response = await dio.get(
        ApiConstants.baseUrl + ApiConstants.popular + ApiConstants.apiKey,
      );

      if (response.statusCode == 200) {
        final data = List.from(response.data as List);

        final movies = data.map((e) => MovieModel.fromJson(e)).toList();

        return right(movies);
      }

      throw DataSourceError(response.statusMessage);
    } catch (e) {
      throw DataSourceError(e.toString());
    }
  }
}
