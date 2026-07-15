import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../exceptions/app_exceptions.dart';

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage _secureStorage;

  AuthInterceptor(this._secureStorage);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Try to get token from dotenv (for local development/testing)
    String? token = dotenv.env['GITHUB_TOKEN'];

    if (token == null || token.isEmpty) {
      // Fallback to secure storage (for production logins)
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
      throw UnauthorizedException('Unauthorized access. Token may be invalid or expired.');
    }
    return handler.next(err);
  }
}
