// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

IssueModel _$IssueModelFromJson(Map<String, dynamic> json) {
  return _IssueModel.fromJson(json);
}

/// @nodoc
mixin _$IssueModel {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  IssueUserModel get user => throw _privateConstructorUsedError;
  int get comments => throw _privateConstructorUsedError;

  /// Serializes this IssueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssueModelCopyWith<IssueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueModelCopyWith<$Res> {
  factory $IssueModelCopyWith(
    IssueModel value,
    $Res Function(IssueModel) then,
  ) = _$IssueModelCopyWithImpl<$Res, IssueModel>;
  @useResult
  $Res call({
    int id,
    int number,
    String title,
    String state,
    @JsonKey(name: 'html_url') String htmlUrl,
    @JsonKey(name: 'created_at') DateTime createdAt,
    IssueUserModel user,
    int comments,
  });

  $IssueUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$IssueModelCopyWithImpl<$Res, $Val extends IssueModel>
    implements $IssueModelCopyWith<$Res> {
  _$IssueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssueModel
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
    Object? comments = null,
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
                      as IssueUserModel,
            comments: null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssueUserModelCopyWith<$Res> get user {
    return $IssueUserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IssueModelImplCopyWith<$Res>
    implements $IssueModelCopyWith<$Res> {
  factory _$$IssueModelImplCopyWith(
    _$IssueModelImpl value,
    $Res Function(_$IssueModelImpl) then,
  ) = __$$IssueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int number,
    String title,
    String state,
    @JsonKey(name: 'html_url') String htmlUrl,
    @JsonKey(name: 'created_at') DateTime createdAt,
    IssueUserModel user,
    int comments,
  });

  @override
  $IssueUserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$IssueModelImplCopyWithImpl<$Res>
    extends _$IssueModelCopyWithImpl<$Res, _$IssueModelImpl>
    implements _$$IssueModelImplCopyWith<$Res> {
  __$$IssueModelImplCopyWithImpl(
    _$IssueModelImpl _value,
    $Res Function(_$IssueModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IssueModel
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
    Object? comments = null,
  }) {
    return _then(
      _$IssueModelImpl(
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
                  as IssueUserModel,
        comments: null == comments
            ? _value.comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IssueModelImpl implements _IssueModel {
  const _$IssueModelImpl({
    required this.id,
    required this.number,
    required this.title,
    required this.state,
    @JsonKey(name: 'html_url') required this.htmlUrl,
    @JsonKey(name: 'created_at') required this.createdAt,
    required this.user,
    required this.comments,
  });

  factory _$IssueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueModelImplFromJson(json);

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
  final IssueUserModel user;
  @override
  final int comments;

  @override
  String toString() {
    return 'IssueModel(id: $id, number: $number, title: $title, state: $state, htmlUrl: $htmlUrl, createdAt: $createdAt, user: $user, comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.comments, comments) ||
                other.comments == comments));
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
    comments,
  );

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueModelImplCopyWith<_$IssueModelImpl> get copyWith =>
      __$$IssueModelImplCopyWithImpl<_$IssueModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueModelImplToJson(this);
  }
}

abstract class _IssueModel implements IssueModel {
  const factory _IssueModel({
    required final int id,
    required final int number,
    required final String title,
    required final String state,
    @JsonKey(name: 'html_url') required final String htmlUrl,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    required final IssueUserModel user,
    required final int comments,
  }) = _$IssueModelImpl;

  factory _IssueModel.fromJson(Map<String, dynamic> json) =
      _$IssueModelImpl.fromJson;

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
  IssueUserModel get user;
  @override
  int get comments;

  /// Create a copy of IssueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssueModelImplCopyWith<_$IssueModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IssueUserModel _$IssueUserModelFromJson(Map<String, dynamic> json) {
  return _IssueUserModel.fromJson(json);
}

/// @nodoc
mixin _$IssueUserModel {
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this IssueUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IssueUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IssueUserModelCopyWith<IssueUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueUserModelCopyWith<$Res> {
  factory $IssueUserModelCopyWith(
    IssueUserModel value,
    $Res Function(IssueUserModel) then,
  ) = _$IssueUserModelCopyWithImpl<$Res, IssueUserModel>;
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$IssueUserModelCopyWithImpl<$Res, $Val extends IssueUserModel>
    implements $IssueUserModelCopyWith<$Res> {
  _$IssueUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IssueUserModel
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
abstract class _$$IssueUserModelImplCopyWith<$Res>
    implements $IssueUserModelCopyWith<$Res> {
  factory _$$IssueUserModelImplCopyWith(
    _$IssueUserModelImpl value,
    $Res Function(_$IssueUserModelImpl) then,
  ) = __$$IssueUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, @JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$IssueUserModelImplCopyWithImpl<$Res>
    extends _$IssueUserModelCopyWithImpl<$Res, _$IssueUserModelImpl>
    implements _$$IssueUserModelImplCopyWith<$Res> {
  __$$IssueUserModelImplCopyWithImpl(
    _$IssueUserModelImpl _value,
    $Res Function(_$IssueUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IssueUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? login = null, Object? avatarUrl = null}) {
    return _then(
      _$IssueUserModelImpl(
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
class _$IssueUserModelImpl implements _IssueUserModel {
  const _$IssueUserModelImpl({
    required this.login,
    @JsonKey(name: 'avatar_url') required this.avatarUrl,
  });

  factory _$IssueUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IssueUserModelImplFromJson(json);

  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'IssueUserModel(login: $login, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueUserModelImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, avatarUrl);

  /// Create a copy of IssueUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueUserModelImplCopyWith<_$IssueUserModelImpl> get copyWith =>
      __$$IssueUserModelImplCopyWithImpl<_$IssueUserModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IssueUserModelImplToJson(this);
  }
}

abstract class _IssueUserModel implements IssueUserModel {
  const factory _IssueUserModel({
    required final String login,
    @JsonKey(name: 'avatar_url') required final String avatarUrl,
  }) = _$IssueUserModelImpl;

  factory _IssueUserModel.fromJson(Map<String, dynamic> json) =
      _$IssueUserModelImpl.fromJson;

  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;

  /// Create a copy of IssueUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IssueUserModelImplCopyWith<_$IssueUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
