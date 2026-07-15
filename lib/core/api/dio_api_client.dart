import 'package:dio/dio.dart';
import 'api_client.dart';
import '../exceptions/app_exceptions.dart';

class DioApiClient implements ApiClient {
  final Dio _dio;

  DioApiClient(this._dio);

  @override
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters, options: headers != null ? Options(headers: headers) : null);
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<dynamic> post(String path, {dynamic data, Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.post(path, data: data, queryParameters: queryParameters, options: headers != null ? Options(headers: headers) : null);
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<dynamic> put(String path, {dynamic data, Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.put(path, data: data, queryParameters: queryParameters, options: headers != null ? Options(headers: headers) : null);
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  @override
  Future<dynamic> delete(String path, {dynamic data, Map<String, dynamic>? queryParameters, Map<String, dynamic>? headers}) async {
    try {
      final response = await _dio.delete(path, data: data, queryParameters: queryParameters, options: headers != null ? Options(headers: headers) : null);
      return response.data;
    } on DioException catch (e) {
      _handleDioError(e);
    }
  }

  void _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout) {
      throw TimeoutException('Connection timed out. Please try again.');
    }

    // Interceptors (like AuthInterceptor/RateLimitInterceptor) may have already thrown an AppException
    if (error.error is AppException) {
      throw error.error as AppException;
    }

    final statusCode = error.response?.statusCode;
    final message = error.response?.statusMessage ?? error.message ?? 'Unknown Error';

    switch (statusCode) {
      case 401:
        throw UnauthorizedException('Unauthorized access.', code: statusCode.toString());
      case 403:
        throw RateLimitException('Rate limit exceeded or access forbidden.', code: statusCode.toString());
      case 404:
        throw NotFoundException('Requested resource not found.', code: statusCode.toString());
      case 429:
        throw RateLimitException('Too many requests.', code: statusCode.toString());
      case 500:
      case 502:
      case 503:
        throw ServerException('Internal server error.', code: statusCode.toString());
      default:
        throw NetworkException(message, code: statusCode?.toString());
    }
  }
}
