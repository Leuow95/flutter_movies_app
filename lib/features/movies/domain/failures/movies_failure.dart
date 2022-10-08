abstract class MoviesFailure implements Exception {}

class DataSourceError implements MoviesFailure {
  final String? message;

  DataSourceError(this.message);
}
