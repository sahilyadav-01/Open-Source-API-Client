class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic details;

  AppException(this.message, {this.code, this.details});

  @override
  String toString() => 'AppException(message: $message, code: $code)';
}

class NetworkException extends AppException {
  NetworkException(super.message, {super.code, super.details});
}

class UnauthorizedException extends AppException {
  UnauthorizedException(super.message, {super.code, super.details});
}

class NotFoundException extends AppException {
  NotFoundException(super.message, {super.code, super.details});
}

class ServerException extends AppException {
  ServerException(super.message, {super.code, super.details});
}

class TimeoutException extends AppException {
  TimeoutException(super.message, {super.code, super.details});
}

class RateLimitException extends AppException {
  RateLimitException(super.message, {super.code, super.details});
}
