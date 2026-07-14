// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) {
  return _GithubRepo.fromJson(json);
}

/// @nodoc
mixin _$GithubRepo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  GithubUser get owner => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get fork => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;

  /// Serializes this GithubRepo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubRepoCopyWith<GithubRepo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubRepoCopyWith<$Res> {
  factory $GithubRepoCopyWith(
    GithubRepo value,
    $Res Function(GithubRepo) then,
  ) = _$GithubRepoCopyWithImpl<$Res, GithubRepo>;
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'full_name') String fullName,
    GithubUser owner,
    bool private,
    @JsonKey(name: 'html_url') String htmlUrl,
    String? description,
    bool fork,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'stargazers_count') int stargazersCount,
    @JsonKey(name: 'watchers_count') int watchersCount,
    String? language,
    @JsonKey(name: 'forks_count') int forksCount,
  });

  $GithubUserCopyWith<$Res> get owner;
}

/// @nodoc
class _$GithubRepoCopyWithImpl<$Res, $Val extends GithubRepo>
    implements $GithubRepoCopyWith<$Res> {
  _$GithubRepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            owner: null == owner
                ? _value.owner
                : owner // ignore: cast_nullable_to_non_nullable
                      as GithubUser,
            private: null == private
                ? _value.private
                : private // ignore: cast_nullable_to_non_nullable
                      as bool,
            htmlUrl: null == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            fork: null == fork
                ? _value.fork
                : fork // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            updatedAt: null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            stargazersCount: null == stargazersCount
                ? _value.stargazersCount
                : stargazersCount // ignore: cast_nullable_to_non_nullable
                      as int,
            watchersCount: null == watchersCount
                ? _value.watchersCount
                : watchersCount // ignore: cast_nullable_to_non_nullable
                      as int,
            language: freezed == language
                ? _value.language
                : language // ignore: cast_nullable_to_non_nullable
                      as String?,
            forksCount: null == forksCount
                ? _value.forksCount
                : forksCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GithubUserCopyWith<$Res> get owner {
    return $GithubUserCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubRepoImplCopyWith<$Res>
    implements $GithubRepoCopyWith<$Res> {
  factory _$$GithubRepoImplCopyWith(
    _$GithubRepoImpl value,
    $Res Function(_$GithubRepoImpl) then,
  ) = __$$GithubRepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    @JsonKey(name: 'full_name') String fullName,
    GithubUser owner,
    bool private,
    @JsonKey(name: 'html_url') String htmlUrl,
    String? description,
    bool fork,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
    @JsonKey(name: 'stargazers_count') int stargazersCount,
    @JsonKey(name: 'watchers_count') int watchersCount,
    String? language,
    @JsonKey(name: 'forks_count') int forksCount,
  });

  @override
  $GithubUserCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GithubRepoImplCopyWithImpl<$Res>
    extends _$GithubRepoCopyWithImpl<$Res, _$GithubRepoImpl>
    implements _$$GithubRepoImplCopyWith<$Res> {
  __$$GithubRepoImplCopyWithImpl(
    _$GithubRepoImpl _value,
    $Res Function(_$GithubRepoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? private = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? fork = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? language = freezed,
    Object? forksCount = null,
  }) {
    return _then(
      _$GithubRepoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        owner: null == owner
            ? _value.owner
            : owner // ignore: cast_nullable_to_non_nullable
                  as GithubUser,
        private: null == private
            ? _value.private
            : private // ignore: cast_nullable_to_non_nullable
                  as bool,
        htmlUrl: null == htmlUrl
            ? _value.htmlUrl
            : htmlUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        fork: null == fork
            ? _value.fork
            : fork // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        updatedAt: null == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        stargazersCount: null == stargazersCount
            ? _value.stargazersCount
            : stargazersCount // ignore: cast_nullable_to_non_nullable
                  as int,
        watchersCount: null == watchersCount
            ? _value.watchersCount
            : watchersCount // ignore: cast_nullable_to_non_nullable
                  as int,
        language: freezed == language
            ? _value.language
            : language // ignore: cast_nullable_to_non_nullable
                  as String?,
        forksCount: null == forksCount
            ? _value.forksCount
            : forksCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubRepoImpl implements _GithubRepo {
  const _$GithubRepoImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'full_name') required this.fullName,
    required this.owner,
    required this.private,
    @JsonKey(name: 'html_url') required this.htmlUrl,
    this.description,
    required this.fork,
    @JsonKey(name: 'created_at') required this.createdAt,
    @JsonKey(name: 'updated_at') required this.updatedAt,
    @JsonKey(name: 'stargazers_count') required this.stargazersCount,
    @JsonKey(name: 'watchers_count') required this.watchersCount,
    this.language,
    @JsonKey(name: 'forks_count') required this.forksCount,
  });

  factory _$GithubRepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubRepoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final GithubUser owner;
  @override
  final bool private;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  final String? description;
  @override
  final bool fork;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  final String? language;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;

  @override
  String toString() {
    return 'GithubRepo(id: $id, name: $name, fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, createdAt: $createdAt, updatedAt: $updatedAt, stargazersCount: $stargazersCount, watchersCount: $watchersCount, language: $language, forksCount: $forksCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubRepoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fork, fork) || other.fork == fork) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    fullName,
    owner,
    private,
    htmlUrl,
    description,
    fork,
    createdAt,
    updatedAt,
    stargazersCount,
    watchersCount,
    language,
    forksCount,
  );

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubRepoImplCopyWith<_$GithubRepoImpl> get copyWith =>
      __$$GithubRepoImplCopyWithImpl<_$GithubRepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubRepoImplToJson(this);
  }
}

abstract class _GithubRepo implements GithubRepo {
  const factory _GithubRepo({
    required final int id,
    required final String name,
    @JsonKey(name: 'full_name') required final String fullName,
    required final GithubUser owner,
    required final bool private,
    @JsonKey(name: 'html_url') required final String htmlUrl,
    final String? description,
    required final bool fork,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @JsonKey(name: 'updated_at') required final DateTime updatedAt,
    @JsonKey(name: 'stargazers_count') required final int stargazersCount,
    @JsonKey(name: 'watchers_count') required final int watchersCount,
    final String? language,
    @JsonKey(name: 'forks_count') required final int forksCount,
  }) = _$GithubRepoImpl;

  factory _GithubRepo.fromJson(Map<String, dynamic> json) =
      _$GithubRepoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  GithubUser get owner;
  @override
  bool get private;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String? get description;
  @override
  bool get fork;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  String? get language;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;

  /// Create a copy of GithubRepo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubRepoImplCopyWith<_$GithubRepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
