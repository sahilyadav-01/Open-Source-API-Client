// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_value_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KeyValueItemImpl _$$KeyValueItemImplFromJson(Map<String, dynamic> json) =>
    _$KeyValueItemImpl(
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
      isEnabled: json['isEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$KeyValueItemImplToJson(_$KeyValueItemImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'isEnabled': instance.isEnabled,
    };
