import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../errors/exceptions.dart';

class ConnectivityInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();
    
    // Check if there is no connection at all
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const NoInternetException('No internet connection'),
        ),
      );
    }
    
    return super.onRequest(options, handler);
  }
}
