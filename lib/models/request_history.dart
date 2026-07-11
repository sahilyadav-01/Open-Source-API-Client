import 'package:isar_community/isar.dart';

part 'request_history.g.dart';

@Collection()
class RequestHistory {
  Id id = Isar.autoIncrement;

  late String method;
  late String url;
  late String headersJson; // Stored as JSON string
  late String paramsJson;  // Stored as JSON string
  late String body;

  int? responseStatusCode;
  String? responseBody;
  String? responseHeadersJson;
  int? responseDurationMs;
  int? responseSizeBytes;

  late DateTime timestamp;
}
