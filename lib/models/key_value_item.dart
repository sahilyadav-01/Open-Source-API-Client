import 'package:freezed_annotation/freezed_annotation.dart';

part 'key_value_item.freezed.dart';
part 'key_value_item.g.dart';

@freezed
class KeyValueItem with _$KeyValueItem {
  const factory KeyValueItem({
    @Default('') String key,
    @Default('') String value,
    @Default(true) bool isEnabled,
  }) = _KeyValueItem;

  factory KeyValueItem.fromJson(Map<String, dynamic> json) => _$KeyValueItemFromJson(json);
}
