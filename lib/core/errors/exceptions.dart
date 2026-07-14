class NoInternetException implements Exception {
  final String message;
  const NoInternetException(this.message);

  @override
  String toString() => message;
}

class ServerException implements Exception {
  final String message;
  final int statusCode;
  const ServerException(this.message, this.statusCode);

  @override
  String toString() => message;
}

class RateLimitException implements Exception {
  final String message;
  const RateLimitException(this.message);

  @override
  String toString() => message;
}

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException(this.message);

  @override
  String toString() => message;
}
