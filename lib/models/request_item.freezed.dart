// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RequestItem _$RequestItemFromJson(Map<String, dynamic> json) {
  return _RequestItem.fromJson(json);
}

/// @nodoc
mixin _$RequestItem {
  String get id => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  Map<String, String> get params => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  ResponseItem? get response => throw _privateConstructorUsedError;

  /// Serializes this RequestItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestItemCopyWith<RequestItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestItemCopyWith<$Res> {
  factory $RequestItemCopyWith(
    RequestItem value,
    $Res Function(RequestItem) then,
  ) = _$RequestItemCopyWithImpl<$Res, RequestItem>;
  @useResult
  $Res call({
    String id,
    String method,
    String url,
    Map<String, String> headers,
    Map<String, String> params,
    String body,
    ResponseItem? response,
  });

  $ResponseItemCopyWith<$Res>? get response;
}

/// @nodoc
class _$RequestItemCopyWithImpl<$Res, $Val extends RequestItem>
    implements $RequestItemCopyWith<$Res> {
  _$RequestItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? params = null,
    Object? body = null,
    Object? response = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            method: null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            headers: null == headers
                ? _value.headers
                : headers // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            params: null == params
                ? _value.params
                : params // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            response: freezed == response
                ? _value.response
                : response // ignore: cast_nullable_to_non_nullable
                      as ResponseItem?,
          )
          as $Val,
    );
  }

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseItemCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $ResponseItemCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RequestItemImplCopyWith<$Res>
    implements $RequestItemCopyWith<$Res> {
  factory _$$RequestItemImplCopyWith(
    _$RequestItemImpl value,
    $Res Function(_$RequestItemImpl) then,
  ) = __$$RequestItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String method,
    String url,
    Map<String, String> headers,
    Map<String, String> params,
    String body,
    ResponseItem? response,
  });

  @override
  $ResponseItemCopyWith<$Res>? get response;
}

/// @nodoc
class __$$RequestItemImplCopyWithImpl<$Res>
    extends _$RequestItemCopyWithImpl<$Res, _$RequestItemImpl>
    implements _$$RequestItemImplCopyWith<$Res> {
  __$$RequestItemImplCopyWithImpl(
    _$RequestItemImpl _value,
    $Res Function(_$RequestItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? params = null,
    Object? body = null,
    Object? response = freezed,
  }) {
    return _then(
      _$RequestItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        headers: null == headers
            ? _value._headers
            : headers // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        params: null == params
            ? _value._params
            : params // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        response: freezed == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as ResponseItem?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestItemImpl implements _RequestItem {
  const _$RequestItemImpl({
    required this.id,
    required this.method,
    required this.url,
    required final Map<String, String> headers,
    required final Map<String, String> params,
    required this.body,
    this.response,
  }) : _headers = headers,
       _params = params;

  factory _$RequestItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestItemImplFromJson(json);

  @override
  final String id;
  @override
  final String method;
  @override
  final String url;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  final Map<String, String> _params;
  @override
  Map<String, String> get params {
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_params);
  }

  @override
  final String body;
  @override
  final ResponseItem? response;

  @override
  String toString() {
    return 'RequestItem(id: $id, method: $method, url: $url, headers: $headers, params: $params, body: $body, response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    method,
    url,
    const DeepCollectionEquality().hash(_headers),
    const DeepCollectionEquality().hash(_params),
    body,
    response,
  );

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestItemImplCopyWith<_$RequestItemImpl> get copyWith =>
      __$$RequestItemImplCopyWithImpl<_$RequestItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestItemImplToJson(this);
  }
}

abstract class _RequestItem implements RequestItem {
  const factory _RequestItem({
    required final String id,
    required final String method,
    required final String url,
    required final Map<String, String> headers,
    required final Map<String, String> params,
    required final String body,
    final ResponseItem? response,
  }) = _$RequestItemImpl;

  factory _RequestItem.fromJson(Map<String, dynamic> json) =
      _$RequestItemImpl.fromJson;

  @override
  String get id;
  @override
  String get method;
  @override
  String get url;
  @override
  Map<String, String> get headers;
  @override
  Map<String, String> get params;
  @override
  String get body;
  @override
  ResponseItem? get response;

  /// Create a copy of RequestItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestItemImplCopyWith<_$RequestItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseItem _$ResponseItemFromJson(Map<String, dynamic> json) {
  return _ResponseItem.fromJson(json);
}

/// @nodoc
mixin _$ResponseItem {
  int get statusCode => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;

  /// Serializes this ResponseItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseItemCopyWith<ResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseItemCopyWith<$Res> {
  factory $ResponseItemCopyWith(
    ResponseItem value,
    $Res Function(ResponseItem) then,
  ) = _$ResponseItemCopyWithImpl<$Res, ResponseItem>;
  @useResult
  $Res call({
    int statusCode,
    String body,
    Map<String, String> headers,
    int durationMs,
    int sizeBytes,
  });
}

/// @nodoc
class _$ResponseItemCopyWithImpl<$Res, $Val extends ResponseItem>
    implements $ResponseItemCopyWith<$Res> {
  _$ResponseItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
    Object? headers = null,
    Object? durationMs = null,
    Object? sizeBytes = null,
  }) {
    return _then(
      _value.copyWith(
            statusCode: null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                      as int,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            headers: null == headers
                ? _value.headers
                : headers // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
            durationMs: null == durationMs
                ? _value.durationMs
                : durationMs // ignore: cast_nullable_to_non_nullable
                      as int,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ResponseItemImplCopyWith<$Res>
    implements $ResponseItemCopyWith<$Res> {
  factory _$$ResponseItemImplCopyWith(
    _$ResponseItemImpl value,
    $Res Function(_$ResponseItemImpl) then,
  ) = __$$ResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int statusCode,
    String body,
    Map<String, String> headers,
    int durationMs,
    int sizeBytes,
  });
}

/// @nodoc
class __$$ResponseItemImplCopyWithImpl<$Res>
    extends _$ResponseItemCopyWithImpl<$Res, _$ResponseItemImpl>
    implements _$$ResponseItemImplCopyWith<$Res> {
  __$$ResponseItemImplCopyWithImpl(
    _$ResponseItemImpl _value,
    $Res Function(_$ResponseItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? body = null,
    Object? headers = null,
    Object? durationMs = null,
    Object? sizeBytes = null,
  }) {
    return _then(
      _$ResponseItemImpl(
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        headers: null == headers
            ? _value._headers
            : headers // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        durationMs: null == durationMs
            ? _value.durationMs
            : durationMs // ignore: cast_nullable_to_non_nullable
                  as int,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseItemImpl implements _ResponseItem {
  const _$ResponseItemImpl({
    required this.statusCode,
    required this.body,
    required final Map<String, String> headers,
    required this.durationMs,
    required this.sizeBytes,
  }) : _headers = headers;

  factory _$ResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseItemImplFromJson(json);

  @override
  final int statusCode;
  @override
  final String body;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final int durationMs;
  @override
  final int sizeBytes;

  @override
  String toString() {
    return 'ResponseItem(statusCode: $statusCode, body: $body, headers: $headers, durationMs: $durationMs, sizeBytes: $sizeBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseItemImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    statusCode,
    body,
    const DeepCollectionEquality().hash(_headers),
    durationMs,
    sizeBytes,
  );

  /// Create a copy of ResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseItemImplCopyWith<_$ResponseItemImpl> get copyWith =>
      __$$ResponseItemImplCopyWithImpl<_$ResponseItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseItemImplToJson(this);
  }
}

abstract class _ResponseItem implements ResponseItem {
  const factory _ResponseItem({
    required final int statusCode,
    required final String body,
    required final Map<String, String> headers,
    required final int durationMs,
    required final int sizeBytes,
  }) = _$ResponseItemImpl;

  factory _ResponseItem.fromJson(Map<String, dynamic> json) =
      _$ResponseItemImpl.fromJson;

  @override
  int get statusCode;
  @override
  String get body;
  @override
  Map<String, String> get headers;
  @override
  int get durationMs;
  @override
  int get sizeBytes;

  /// Create a copy of ResponseItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseItemImplCopyWith<_$ResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
