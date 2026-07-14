import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../errors/exceptions.dart';

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // First, try to get the token from compile-time variables (e.g. --dart-define-from-file=.env)
    String? token = const String.fromEnvironment('GITHUB_TOKEN');

    if (token.isEmpty) {
      // Fallback to secure storage if the token is acquired at runtime
      token = await _secureStorage.read(key: 'github_token') ?? '';
    }

    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      throw const UnauthorizedException('Unauthorized access. Token may be invalid or expired.');
    }
    return handler.next(err);
  }
}
