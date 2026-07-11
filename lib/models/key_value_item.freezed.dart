// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_value_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KeyValueItem _$KeyValueItemFromJson(Map<String, dynamic> json) {
  return _KeyValueItem.fromJson(json);
}

/// @nodoc
mixin _$KeyValueItem {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  /// Serializes this KeyValueItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KeyValueItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeyValueItemCopyWith<KeyValueItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyValueItemCopyWith<$Res> {
  factory $KeyValueItemCopyWith(
    KeyValueItem value,
    $Res Function(KeyValueItem) then,
  ) = _$KeyValueItemCopyWithImpl<$Res, KeyValueItem>;
  @useResult
  $Res call({String key, String value, bool isEnabled});
}

/// @nodoc
class _$KeyValueItemCopyWithImpl<$Res, $Val extends KeyValueItem>
    implements $KeyValueItemCopyWith<$Res> {
  _$KeyValueItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KeyValueItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as String,
            isEnabled: null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KeyValueItemImplCopyWith<$Res>
    implements $KeyValueItemCopyWith<$Res> {
  factory _$$KeyValueItemImplCopyWith(
    _$KeyValueItemImpl value,
    $Res Function(_$KeyValueItemImpl) then,
  ) = __$$KeyValueItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value, bool isEnabled});
}

/// @nodoc
class __$$KeyValueItemImplCopyWithImpl<$Res>
    extends _$KeyValueItemCopyWithImpl<$Res, _$KeyValueItemImpl>
    implements _$$KeyValueItemImplCopyWith<$Res> {
  __$$KeyValueItemImplCopyWithImpl(
    _$KeyValueItemImpl _value,
    $Res Function(_$KeyValueItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KeyValueItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _$KeyValueItemImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as String,
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KeyValueItemImpl implements _KeyValueItem {
  const _$KeyValueItemImpl({
    this.key = '',
    this.value = '',
    this.isEnabled = true,
  });

  factory _$KeyValueItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeyValueItemImplFromJson(json);

  @override
  @JsonKey()
  final String key;
  @override
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final bool isEnabled;

  @override
  String toString() {
    return 'KeyValueItem(key: $key, value: $value, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeyValueItemImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, isEnabled);

  /// Create a copy of KeyValueItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeyValueItemImplCopyWith<_$KeyValueItemImpl> get copyWith =>
      __$$KeyValueItemImplCopyWithImpl<_$KeyValueItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeyValueItemImplToJson(this);
  }
}

abstract class _KeyValueItem implements KeyValueItem {
  const factory _KeyValueItem({
    final String key,
    final String value,
    final bool isEnabled,
  }) = _$KeyValueItemImpl;

  factory _KeyValueItem.fromJson(Map<String, dynamic> json) =
      _$KeyValueItemImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  bool get isEnabled;

  /// Create a copy of KeyValueItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeyValueItemImplCopyWith<_$KeyValueItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
