import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import '../exceptions/app_exceptions.dart';

class ConnectivityInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: NetworkException('No internet connection available.'),
        ),
      );
    }
    return handler.next(options);
  }
}
