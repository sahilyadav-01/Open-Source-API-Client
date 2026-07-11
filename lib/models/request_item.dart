import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_item.freezed.dart';
part 'request_item.g.dart';

@freezed
class RequestItem with _$RequestItem {
  const factory RequestItem({
    required String id,
    required String method,
    required String url,
    required Map<String, String> headers,
    required Map<String, String> params,
    required String body,
    ResponseItem? response,
  }) = _RequestItem;

  factory RequestItem.fromJson(Map<String, dynamic> json) => _$RequestItemFromJson(json);
}

@freezed
class ResponseItem with _$ResponseItem {
  const factory ResponseItem({
    required int statusCode,
    required String body,
    required Map<String, String> headers,
    required int durationMs,
    required int sizeBytes,
  }) = _ResponseItem;

  factory ResponseItem.fromJson(Map<String, dynamic> json) => _$ResponseItemFromJson(json);
}
