// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pull_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PullRequestModel _$PullRequestModelFromJson(Map<String, dynamic> json) {
  return _PullRequestModel.fromJson(json);
}

/// @nodoc
mixin _$PullRequestModel {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  PullRequestUserModel get user => throw _privateConstructorUsedError;

  /// Serializes this PullRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullRequestModelCopyWith<PullRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestModelCopyWith<$Res> {
  factory $PullRequestModelCopyWith(
    PullRequestModel value,
    $Res Function(PullRequestModel) then,
  ) = _$PullRequestModelCopyWithImpl<$Res, PullRequestModel>;
  @useResult
  $Res call({
    int id,
    int number,
    String title,
    String state,
    @JsonKey(name: 'html_url') String htmlUrl,
    @JsonKey(name: 'created_at') DateTime createdAt,
    PullRequestUserModel user,
  });

  $PullRequestUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$PullRequestModelCopyWithImpl<$Res, $Val extends PullRequestModel>
    implements $PullRequestModelCopyWith<$Res> {
  _$PullRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? title = null,
    Object? state = null,
    Object? htmlUrl = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            number: null == number
                ? _value.number
                : number // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            state: null == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                      as String,
            htmlUrl: null == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as PullRequestUserModel,
          )
          as $Val,
    );
  }

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PullRequestUserModelCopyWith<$Res> get user {
    return $PullRequestUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PullRequestModelImplCopyWith<$Res>
    implements $PullRequestModelCopyWith<$Res> {
  factory _$$PullRequestModelImplCopyWith(
    _$PullRequestModelImpl value,
    $Res Function(_$PullRequestModelImpl) then,
  ) = __$$PullRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int number,
    String title,
    String state,
    @JsonKey(name: 'html_url') String htmlUrl,
    @JsonKey(name: 'created_at') DateTime createdAt,
    PullRequestUserModel user,
  });

  @override
  $PullRequestUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$PullRequestModelImplCopyWithImpl<$Res>
    extends _$PullRequestModelCopyWithImpl<$Res, _$PullRequestModelImpl>
    implements _$$PullRequestModelImplCopyWith<$Res> {
  __$$PullRequestModelImplCopyWithImpl(
    _$PullRequestModelImpl _value,
    $Res Function(_$PullRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? title = null,
    Object? state = null,
    Object? htmlUrl = null,
    Object? createdAt = null,
    Object? user = null,
  }) {
    return _then(
      _$PullRequestModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        number: null == number
            ? _value.number
            : number // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as String,
        htmlUrl: null == htmlUrl
            ? _value.htmlUrl
            : htmlUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as PullRequestUserModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PullRequestModelImpl implements _PullRequestModel {
  const _$PullRequestModelImpl({
    required this.id,
    required this.number,
    required this.title,
    required this.state,
    @JsonKey(name: 'html_url') required this.htmlUrl,
    @JsonKey(name: 'created_at') required this.createdAt,
    required this.user,
  });

  factory _$PullRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullRequestModelImplFromJson(json);

  @override
  final int id;
  @override
  final int number;
  @override
  final String title;
  @override
  final String state;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final PullRequestUserModel user;

  @override
  String toString() {
    return 'PullRequestModel(id: $id, number: $number, title: $title, state: $state, htmlUrl: $htmlUrl, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    number,
    title,
    state,
    htmlUrl,
    createdAt,
    user,
  );

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestModelImplCopyWith<_$PullRequestModelImpl> get copyWith =>
      __$$PullRequestModelImplCopyWithImpl<_$PullRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PullRequestModelImplToJson(this);
  }
}

abstract class _PullRequestModel implements PullRequestModel {
  const factory _PullRequestModel({
    required final int id,
    required final int number,
    required final String title,
    required final String state,
    @JsonKey(name: 'html_url') required final String htmlUrl,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    required final PullRequestUserModel user,
  }) = _$PullRequestModelImpl;

  factory _PullRequestModel.fromJson(Map<String, dynamic> json) =
      _$PullRequestModelImpl.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  String get title;
  @override
  String get state;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  PullRequestUserModel get user;

  /// Create a copy of PullRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRequestModelImplCopyWith<_$PullRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PullRequestUserModel _$PullRequestUserModelFromJson(Map<String, dynamic> json) {
  return _PullRequestUserModel.fromJson(json);
}

/// @nodoc
mixin _$PullRequestUserModel {
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this PullRequestUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PullRequestUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PullRequestUserModelCopyWith<PullRequestUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestUserModelCopyWith<$Res> {
  factory $PullRequestUserModelCopyWith(
    PullRequestUserModel value,
    $Res Function(PullRequestUserModel) then,
  ) = _$PullRequestUserModelCopyWithImpl<$Res, PullRequestUserModel>;
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$PullRequestUserModelCopyWithImpl<
  $Res,
  $Val extends PullRequestUserModel
>
    implements $PullRequestUserModelCopyWith<$Res> {
  _$PullRequestUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PullRequestUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? login = null, Object? avatarUrl = null}) {
    return _then(
      _value.copyWith(
            login: null == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PullRequestUserModelImplCopyWith<$Res>
    implements $PullRequestUserModelCopyWith<$Res> {
  factory _$$PullRequestUserModelImplCopyWith(
    _$PullRequestUserModelImpl value,
    $Res Function(_$PullRequestUserModelImpl) then,
  ) = __$$PullRequestUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$PullRequestUserModelImplCopyWithImpl<$Res>
    extends _$PullRequestUserModelCopyWithImpl<$Res, _$PullRequestUserModelImpl>
    implements _$$PullRequestUserModelImplCopyWith<$Res> {
  __$$PullRequestUserModelImplCopyWithImpl(
    _$PullRequestUserModelImpl _value,
    $Res Function(_$PullRequestUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PullRequestUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? login = null, Object? avatarUrl = null}) {
    return _then(
      _$PullRequestUserModelImpl(
        login: null == login
            ? _value.login
            : login // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PullRequestUserModelImpl implements _PullRequestUserModel {
  const _$PullRequestUserModelImpl({
    required this.login,
    @JsonKey(name: 'avatar_url') required this.avatarUrl,
  });

  factory _$PullRequestUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PullRequestUserModelImplFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'PullRequestUserModel(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PullRequestUserModelImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  /// Create a copy of PullRequestUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PullRequestUserModelImplCopyWith<_$PullRequestUserModelImpl>
  get copyWith =>
      __$$PullRequestUserModelImplCopyWithImpl<_$PullRequestUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PullRequestUserModelImplToJson(this);
  }
}

abstract class _PullRequestUserModel implements PullRequestUserModel {
  const factory _PullRequestUserModel({
    required final String login,
    @JsonKey(name: 'avatar_url') required final String avatarUrl,
  }) = _$PullRequestUserModelImpl;

  factory _PullRequestUserModel.fromJson(Map<String, dynamic> json) =
      _$PullRequestUserModelImpl.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;

  /// Create a copy of PullRequestUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PullRequestUserModelImplCopyWith<_$PullRequestUserModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
