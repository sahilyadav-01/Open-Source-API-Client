class RequestItem {
  final String id;
  final String method;
  final String url;
  final Map<String, String> headers;
  final Map<String, String> params;
  final String body;
  final ResponseItem? response;

  RequestItem({
    required this.id,
    required this.method,
    required this.url,
    required this.headers,
    required this.params,
    required this.body,
    this.response,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'method': method,
      'url': url,
      'headers': headers,
      'params': params,
      'body': body,
      'response': response?.toJson(),
    };
  }

  factory RequestItem.fromJson(Map<String, dynamic> json) {
    return RequestItem(
      id: json['id'] as String,
      method: json['method'] as String,
      url: json['url'] as String,
      headers: Map<String, String>.from(json['headers'] as Map? ?? {}),
      params: Map<String, String>.from(json['params'] as Map? ?? {}),
      body: json['body'] as String? ?? '',
      response: json['response'] != null
          ? ResponseItem.fromJson(json['response'] as Map<String, dynamic>)
          : null,
    );
  }

  RequestItem copyWith({
    String? id,
    String? method,
    String? url,
    Map<String, String>? headers,
    Map<String, String>? params,
    String? body,
    ResponseItem? response,
    bool clearResponse = false,
  }) {
    return RequestItem(
      id: id ?? this.id,
      method: method ?? this.method,
      url: url ?? this.url,
      headers: headers ?? this.headers,
      params: params ?? this.params,
      body: body ?? this.body,
      response: clearResponse ? null : (response ?? this.response),
    );
  }
}

class ResponseItem {
  final int statusCode;
  final String body;
  final Map<String, String> headers;
  final int durationMs;
  final int sizeBytes;

  ResponseItem({
    required this.statusCode,
    required this.body,
    required this.headers,
    required this.durationMs,
    required this.sizeBytes,
  });

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'body': body,
      'headers': headers,
      'durationMs': durationMs,
      'sizeBytes': sizeBytes,
    };
  }

  factory ResponseItem.fromJson(Map<String, dynamic> json) {
    return ResponseItem(
      statusCode: json['statusCode'] as int,
      body: json['body'] as String,
      headers: Map<String, String>.from(json['headers'] as Map? ?? {}),
      durationMs: json['durationMs'] as int,
      sizeBytes: json['sizeBytes'] as int,
    );
  }
}
