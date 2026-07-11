// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClientState {
  String get method => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<KeyValueItem> get headers => throw _privateConstructorUsedError;
  List<KeyValueItem> get params => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  ResponseItem? get currentResponse => throw _privateConstructorUsedError;
  List<RequestItem> get history => throw _privateConstructorUsedError;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientStateCopyWith<ClientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientStateCopyWith<$Res> {
  factory $ClientStateCopyWith(
    ClientState value,
    $Res Function(ClientState) then,
  ) = _$ClientStateCopyWithImpl<$Res, ClientState>;
  @useResult
  $Res call({
    String method,
    String url,
    List<KeyValueItem> headers,
    List<KeyValueItem> params,
    String body,
    bool isLoading,
    ResponseItem? currentResponse,
    List<RequestItem> history,
  });

  $ResponseItemCopyWith<$Res>? get currentResponse;
}

/// @nodoc
class _$ClientStateCopyWithImpl<$Res, $Val extends ClientState>
    implements $ClientStateCopyWith<$Res> {
  _$ClientStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? params = null,
    Object? body = null,
    Object? isLoading = null,
    Object? currentResponse = freezed,
    Object? history = null,
  }) {
    return _then(
      _value.copyWith(
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
                      as List<KeyValueItem>,
            params: null == params
                ? _value.params
                : params // ignore: cast_nullable_to_non_nullable
                      as List<KeyValueItem>,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            currentResponse: freezed == currentResponse
                ? _value.currentResponse
                : currentResponse // ignore: cast_nullable_to_non_nullable
                      as ResponseItem?,
            history: null == history
                ? _value.history
                : history // ignore: cast_nullable_to_non_nullable
                      as List<RequestItem>,
          )
          as $Val,
    );
  }

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseItemCopyWith<$Res>? get currentResponse {
    if (_value.currentResponse == null) {
      return null;
    }

    return $ResponseItemCopyWith<$Res>(_value.currentResponse!, (value) {
      return _then(_value.copyWith(currentResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClientStateImplCopyWith<$Res>
    implements $ClientStateCopyWith<$Res> {
  factory _$$ClientStateImplCopyWith(
    _$ClientStateImpl value,
    $Res Function(_$ClientStateImpl) then,
  ) = __$$ClientStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String method,
    String url,
    List<KeyValueItem> headers,
    List<KeyValueItem> params,
    String body,
    bool isLoading,
    ResponseItem? currentResponse,
    List<RequestItem> history,
  });

  @override
  $ResponseItemCopyWith<$Res>? get currentResponse;
}

/// @nodoc
class __$$ClientStateImplCopyWithImpl<$Res>
    extends _$ClientStateCopyWithImpl<$Res, _$ClientStateImpl>
    implements _$$ClientStateImplCopyWith<$Res> {
  __$$ClientStateImplCopyWithImpl(
    _$ClientStateImpl _value,
    $Res Function(_$ClientStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? url = null,
    Object? headers = null,
    Object? params = null,
    Object? body = null,
    Object? isLoading = null,
    Object? currentResponse = freezed,
    Object? history = null,
  }) {
    return _then(
      _$ClientStateImpl(
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
                  as List<KeyValueItem>,
        params: null == params
            ? _value._params
            : params // ignore: cast_nullable_to_non_nullable
                  as List<KeyValueItem>,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentResponse: freezed == currentResponse
            ? _value.currentResponse
            : currentResponse // ignore: cast_nullable_to_non_nullable
                  as ResponseItem?,
        history: null == history
            ? _value._history
            : history // ignore: cast_nullable_to_non_nullable
                  as List<RequestItem>,
      ),
    );
  }
}

/// @nodoc

class _$ClientStateImpl implements _ClientState {
  const _$ClientStateImpl({
    this.method = 'GET',
    this.url = 'https://jsonplaceholder.typicode.com/posts/1',
    final List<KeyValueItem> headers = const [
      KeyValueItem(key: 'Accept', value: '*/*'),
    ],
    final List<KeyValueItem> params = const [],
    this.body = '',
    this.isLoading = false,
    this.currentResponse,
    final List<RequestItem> history = const [],
  }) : _headers = headers,
       _params = params,
       _history = history;

  @override
  @JsonKey()
  final String method;
  @override
  @JsonKey()
  final String url;
  final List<KeyValueItem> _headers;
  @override
  @JsonKey()
  List<KeyValueItem> get headers {
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_headers);
  }

  final List<KeyValueItem> _params;
  @override
  @JsonKey()
  List<KeyValueItem> get params {
    if (_params is EqualUnmodifiableListView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_params);
  }

  @override
  @JsonKey()
  final String body;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final ResponseItem? currentResponse;
  final List<RequestItem> _history;
  @override
  @JsonKey()
  List<RequestItem> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'ClientState(method: $method, url: $url, headers: $headers, params: $params, body: $body, isLoading: $isLoading, currentResponse: $currentResponse, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientStateImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._params, _params) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.currentResponse, currentResponse) ||
                other.currentResponse == currentResponse) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    method,
    url,
    const DeepCollectionEquality().hash(_headers),
    const DeepCollectionEquality().hash(_params),
    body,
    isLoading,
    currentResponse,
    const DeepCollectionEquality().hash(_history),
  );

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientStateImplCopyWith<_$ClientStateImpl> get copyWith =>
      __$$ClientStateImplCopyWithImpl<_$ClientStateImpl>(this, _$identity);
}

abstract class _ClientState implements ClientState {
  const factory _ClientState({
    final String method,
    final String url,
    final List<KeyValueItem> headers,
    final List<KeyValueItem> params,
    final String body,
    final bool isLoading,
    final ResponseItem? currentResponse,
    final List<RequestItem> history,
  }) = _$ClientStateImpl;

  @override
  String get method;
  @override
  String get url;
  @override
  List<KeyValueItem> get headers;
  @override
  List<KeyValueItem> get params;
  @override
  String get body;
  @override
  bool get isLoading;
  @override
  ResponseItem? get currentResponse;
  @override
  List<RequestItem> get history;

  /// Create a copy of ClientState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientStateImplCopyWith<_$ClientStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
