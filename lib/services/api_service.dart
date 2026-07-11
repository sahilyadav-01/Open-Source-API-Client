import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/request_item.dart';

class ApiService {
  static Future<ResponseItem> sendRequest(RequestItem request) async {
    final stopwatch = Stopwatch()..start();
    try {
      // 1. Build URI with query parameters
      String urlStr = request.url.trim();
      if (!urlStr.startsWith('http://') && !urlStr.startsWith('https://')) {
        urlStr = 'https://' + urlStr;
      }
      Uri uri = Uri.parse(urlStr);
      if (request.params.isNotEmpty) {
        // Merge existing query params from URL with custom parameters
        final Map<String, String> queryParams = Map.from(uri.queryParameters);
        queryParams.addAll(request.params);
        uri = uri.replace(queryParameters: queryParams);
      }

      // 2. Prepare client and request body/headers
      final headers = Map<String, String>.from(request.headers);
      
      // Auto-set Content-Type if post/put and body not empty
      if ((request.method == 'POST' || request.method == 'PUT' || request.method == 'PATCH') &&
          request.body.isNotEmpty &&
          !headers.containsKey('Content-Type') &&
          !headers.containsKey('content-type')) {
        headers['Content-Type'] = 'application/json';
      }

      http.Response response;
      
      // 3. Send HTTP request based on method
      switch (request.method.toUpperCase()) {
        case 'GET':
          response = await http.get(uri, headers: headers);
          break;
        case 'POST':
          response = await http.post(uri, headers: headers, body: request.body);
          break;
        case 'PUT':
          response = await http.put(uri, headers: headers, body: request.body);
          break;
        case 'DELETE':
          response = await http.delete(uri, headers: headers, body: request.body);
          break;
        case 'PATCH':
          response = await http.patch(uri, headers: headers, body: request.body);
          break;
        case 'HEAD':
          response = await http.head(uri, headers: headers);
          break;
        default:
          throw Exception('Unsupported HTTP method: ${request.method}');
      }

      stopwatch.stop();

      // Convert body bytes to string
      final responseBody = utf8.decode(response.bodyBytes, allowMalformed: true);
      final sizeBytes = response.bodyBytes.length;

      return ResponseItem(
        statusCode: response.statusCode,
        body: responseBody,
        headers: response.headers,
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
