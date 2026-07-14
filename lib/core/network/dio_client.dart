import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'auth_interceptor.dart';
import 'rate_limit_interceptor.dart';
import 'connectivity_interceptor.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  late final Dio _dio;

  factory DioClient() => _instance;

  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.github.com',
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        headers: {'Accept': 'application/vnd.github.v3+json'},
      ),
    );

    _dio.interceptors.addAll([
      ConnectivityInterceptor(),
      AuthInterceptor(),
      RateLimitInterceptor(),
      RetryInterceptor(
        dio: _dio,
        logPrint: print,
        retries: 3,
        retryDelays: const [
          Duration(seconds: 1),
          Duration(seconds: 2),
          Duration(seconds: 3),
        ],
      ),
      LogInterceptor(responseBody: true, requestBody: true),
    ]);
  }

  Dio get dio => _dio;
}
