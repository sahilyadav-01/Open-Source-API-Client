// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestItemImpl _$$RequestItemImplFromJson(Map<String, dynamic> json) =>
    _$RequestItemImpl(
      id: json['id'] as String,
      method: json['method'] as String,
      url: json['url'] as String,
      headers: Map<String, String>.from(json['headers'] as Map),
      params: Map<String, String>.from(json['params'] as Map),
      body: json['body'] as String,
      response: json['response'] == null
          ? null
          : ResponseItem.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RequestItemImplToJson(_$RequestItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': instance.method,
      'url': instance.url,
      'headers': instance.headers,
      'params': instance.params,
      'body': instance.body,
      'response': instance.response?.toJson(),
    };

_$ResponseItemImpl _$$ResponseItemImplFromJson(Map<String, dynamic> json) =>
    _$ResponseItemImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      body: json['body'] as String,
      headers: Map<String, String>.from(json['headers'] as Map),
      durationMs: (json['durationMs'] as num).toInt(),
      sizeBytes: (json['sizeBytes'] as num).toInt(),
    );

Map<String, dynamic> _$$ResponseItemImplToJson(_$ResponseItemImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
      'headers': instance.headers,
      'durationMs': instance.durationMs,
      'sizeBytes': instance.sizeBytes,
    };
