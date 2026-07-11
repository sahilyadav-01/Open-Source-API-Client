import 'dart:convert';
import 'package:dio/dio.dart';
import '../models/request_item.dart';
import 'secure_storage_service.dart';

class ApiService {
  static final Dio _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
  ))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await SecureStorageService.getToken();
        if (token != null && token.isNotEmpty) {
          // Add bearer token if not custom set
          if (!options.headers.containsKey('Authorization') &&
              !options.headers.containsKey('authorization')) {
            options.headers['Authorization'] = 'Bearer $token';
          }
        }
        return handler.next(options);
      },
    ));

  static Future<ResponseItem> sendRequest(RequestItem request) async {
    final stopwatch = Stopwatch()..start();
    try {
      String urlStr = request.url.trim();
      if (!urlStr.startsWith('http://') && !urlStr.startsWith('https://')) {
        urlStr = 'https://$urlStr';
      }

      // Merge headers
      final headers = Map<String, String>.from(request.headers);
      
      // Auto-set Content-Type if post/put and body not empty
      if ((request.method == 'POST' || request.method == 'PUT' || request.method == 'PATCH') &&
          request.body.isNotEmpty &&
          !headers.containsKey('Content-Type') &&
          !headers.containsKey('content-type')) {
        headers['Content-Type'] = 'application/json';
      }

      // Execute request with Dio
      final response = await _dio.request(
        urlStr,
        data: request.body.isNotEmpty ? request.body : null,
        queryParameters: request.params.isNotEmpty ? request.params : null,
        options: Options(
          method: request.method.toUpperCase(),
          headers: headers,
          responseType: ResponseType.bytes, // get raw bytes to measure exact size
          validateStatus: (_) => true, // resolve promise for any status code
        ),
      );

      stopwatch.stop();

      // Convert body bytes to string
      final bodyString = utf8.decode(response.data as List<int>, allowMalformed: true);
      final sizeBytes = (response.data as List<int>).length;

      // Extract headers from response map
      final resHeaders = <String, String>{};
      response.headers.forEach((name, values) {
        resHeaders[name] = values.join(', ');
      });

      return ResponseItem(
        statusCode: response.statusCode ?? 200,
        body: bodyString,
        headers: resHeaders,
        durationMs: stopwatch.elapsedMilliseconds,
        sizeBytes: sizeBytes,
      );
    } catch (e) {
      stopwatch.stop();
      return ResponseItem(
        statusCode: -1,
        body: 'Error: ${e.toString()}',
        headers: {},
        durationMs: stopwatch.elapsedMilliseconds,
        sizeBytes: 0,
      );
    }
  }
}
