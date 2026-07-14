import 'package:dio/dio.dart';

class RateLimitInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final remaining = response.headers.value('x-ratelimit-remaining');

    if (remaining != null) {
      final remainingCount = int.tryParse(remaining) ?? -1;
      if (remainingCount == 0) {
        // You could emit a global event or throw a specific error here
        // so the UI can show a banner.
      }
    }

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 403) {
      final remaining = err.response?.headers.value('x-ratelimit-remaining');
      if (remaining == '0') {
        // Rate limit exceeded.
        // E.g., throw RateLimitException();
      }
    }
    return handler.next(err);
  }
}
