import 'package:dio/dio.dart';
import '../exceptions/app_exceptions.dart';

class RateLimitInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final remaining = response.headers.value('x-ratelimit-remaining');

    if (remaining != null) {
      final remainingCount = int.tryParse(remaining) ?? -1;
      if (remainingCount == 0) {
        throw RateLimitException('Rate limit exceeded from header.');
      }
    }

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 403) {
      final remaining = err.response?.headers.value('x-ratelimit-remaining');
      if (remaining == '0') {
        throw RateLimitException('Rate limit exceeded with 403 status.');
      }
    }
    return handler.next(err);
  }
}
