import 'dart:convert';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/request_history.dart';
import '../models/request_item.dart';

class DatabaseService {
  static Isar? _isar;

  static Future<void> init() async {
    if (_isar != null) return;
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [RequestHistorySchema],
      directory: dir.path,
    );
  }

  static Future<List<RequestItem>> getHistory() async {
    await init();
    final results = await _isar!.collection<RequestHistory>()
        .where()
        .sortByTimestampDesc()
        .findAll();

    return results.map((item) {
      Map<String, String> headers = {};
      try {
        headers = Map<String, String>.from(json.decode(item.headersJson));
      } catch (_) {}

      Map<String, String> params = {};
      try {
        params = Map<String, String>.from(json.decode(item.paramsJson));
      } catch (_) {}
      
      ResponseItem? response;
      if (item.responseStatusCode != null) {
        Map<String, String> resHeaders = {};
        try {
          if (item.responseHeadersJson != null) {
            resHeaders = Map<String, String>.from(json.decode(item.responseHeadersJson!));
          }
        } catch (_) {}
        
        response = ResponseItem(
          statusCode: item.responseStatusCode!,
          body: item.responseBody ?? '',
          headers: resHeaders,
          durationMs: item.responseDurationMs ?? 0,
          sizeBytes: item.responseSizeBytes ?? 0,
        );
      }

      return RequestItem(
        id: item.id.toString(),
        method: item.method,
        url: item.url,
        headers: headers,
        params: params,
        body: item.body,
        response: response,
      );
    }).toList();
  }

  static Future<void> saveRequest(RequestItem item) async {
    await init();
    final history = RequestHistory()
      ..method = item.method
      ..url = item.url
      ..headersJson = json.encode(item.headers)
      ..paramsJson = json.encode(item.params)
      ..body = item.body
      ..timestamp = DateTime.now();

    if (item.response != null) {
      history.responseStatusCode = item.response!.statusCode;
      history.responseBody = item.response!.body;
      history.responseHeadersJson = json.encode(item.response!.headers);
      history.responseDurationMs = item.response!.durationMs;
      history.responseSizeBytes = item.response!.sizeBytes;
    }

    await _isar!.writeTxn(() async {
      // Check if similar request exists (same URL, method, body)
      final col = _isar!.collection<RequestHistory>();
      final existing = await col
          .filter()
          .urlEqualTo(item.url)
          .methodEqualTo(item.method)
          .bodyEqualTo(item.body)
          .findFirst();

      if (existing != null) {
        await col.delete(existing.id);
      }

      await col.put(history);
    });
  }

  static Future<void> clearHistory() async {
    await init();
    await _isar!.writeTxn(() async {
      await _isar!.collection<RequestHistory>().clear();
    });
  }

  static Future<void> deleteItem(int id) async {
    await init();
    await _isar!.writeTxn(() async {
      await _isar!.collection<RequestHistory>().delete(id);
    });
  }
}
