// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGithubUserEntityCollection on Isar {
  IsarCollection<GithubUserEntity> get githubUserEntitys => this.collection();
}

const GithubUserEntitySchema = CollectionSchema(
  name: r'GithubUserEntity',
  id: -8185093473975317379,
  properties: {
    r'avatarUrl': PropertySchema(
      id: 0,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'bio': PropertySchema(id: 1, name: r'bio', type: IsarType.string),
    r'blog': PropertySchema(id: 2, name: r'blog', type: IsarType.string),
    r'company': PropertySchema(id: 3, name: r'company', type: IsarType.string),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'email': PropertySchema(id: 5, name: r'email', type: IsarType.string),
    r'followers': PropertySchema(
      id: 6,
      name: r'followers',
      type: IsarType.long,
    ),
    r'following': PropertySchema(
      id: 7,
      name: r'following',
      type: IsarType.long,
    ),
    r'githubId': PropertySchema(id: 8, name: r'githubId', type: IsarType.long),
    r'htmlUrl': PropertySchema(id: 9, name: r'htmlUrl', type: IsarType.string),
    r'location': PropertySchema(
      id: 10,
      name: r'location',
      type: IsarType.string,
    ),
    r'login': PropertySchema(id: 11, name: r'login', type: IsarType.string),
    r'name': PropertySchema(id: 12, name: r'name', type: IsarType.string),
    r'publicGists': PropertySchema(
      id: 13,
      name: r'publicGists',
      type: IsarType.long,
    ),
    r'publicRepos': PropertySchema(
      id: 14,
      name: r'publicRepos',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 15,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
  },

  estimateSize: _githubUserEntityEstimateSize,
  serialize: _githubUserEntitySerialize,
  deserialize: _githubUserEntityDeserialize,
  deserializeProp: _githubUserEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'githubId': IndexSchema(
      id: 5377143646106768481,
      name: r'githubId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'githubId',
          type: IndexType.value,
          caseSensitive: false,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _githubUserEntityGetId,
  getLinks: _githubUserEntityGetLinks,
  attach: _githubUserEntityAttach,
  version: '3.3.0-dev.1',
);

int _githubUserEntityEstimateSize(
  GithubUserEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatarUrl.length * 3;
  {
    final value = object.bio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.blog;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.company;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.htmlUrl.length * 3;
  {
    final value = object.location;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.login.length * 3;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _githubUserEntitySerialize(
  GithubUserEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatarUrl);
  writer.writeString(offsets[1], object.bio);
  writer.writeString(offsets[2], object.blog);
  writer.writeString(offsets[3], object.company);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.email);
  writer.writeLong(offsets[6], object.followers);
  writer.writeLong(offsets[7], object.following);
  writer.writeLong(offsets[8], object.githubId);
  writer.writeString(offsets[9], object.htmlUrl);
  writer.writeString(offsets[10], object.location);
  writer.writeString(offsets[11], object.login);
  writer.writeString(offsets[12], object.name);
  writer.writeLong(offsets[13], object.publicGists);
  writer.writeLong(offsets[14], object.publicRepos);
  writer.writeDateTime(offsets[15], object.updatedAt);
}

GithubUserEntity _githubUserEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GithubUserEntity();
  object.avatarUrl = reader.readString(offsets[0]);
  object.bio = reader.readStringOrNull(offsets[1]);
  object.blog = reader.readStringOrNull(offsets[2]);
  object.company = reader.readStringOrNull(offsets[3]);
  object.createdAt = reader.readDateTimeOrNull(offsets[4]);
  object.email = reader.readStringOrNull(offsets[5]);
  object.followers = reader.readLongOrNull(offsets[6]);
  object.following = reader.readLongOrNull(offsets[7]);
  object.githubId = reader.readLong(offsets[8]);
  object.htmlUrl = reader.readString(offsets[9]);
  object.id = id;
  object.location = reader.readStringOrNull(offsets[10]);
  object.login = reader.readString(offsets[11]);
  object.name = reader.readStringOrNull(offsets[12]);
  object.publicGists = reader.readLongOrNull(offsets[13]);
  object.publicRepos = reader.readLongOrNull(offsets[14]);
  object.updatedAt = reader.readDateTimeOrNull(offsets[15]);
  return object;
}

P _githubUserEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _githubUserEntityGetId(GithubUserEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _githubUserEntityGetLinks(GithubUserEntity object) {
  return [];
}

void _githubUserEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  GithubUserEntity object,
) {
  object.id = id;
}

extension GithubUserEntityByIndex on IsarCollection<GithubUserEntity> {
  Future<GithubUserEntity?> getByGithubId(int githubId) {
    return getByIndex(r'githubId', [githubId]);
  }

  GithubUserEntity? getByGithubIdSync(int githubId) {
    return getByIndexSync(r'githubId', [githubId]);
  }

  Future<bool> deleteByGithubId(int githubId) {
    return deleteByIndex(r'githubId', [githubId]);
  }

  bool deleteByGithubIdSync(int githubId) {
    return deleteByIndexSync(r'githubId', [githubId]);
  }

  Future<List<GithubUserEntity?>> getAllByGithubId(List<int> githubIdValues) {
    final values = githubIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'githubId', values);
  }

  List<GithubUserEntity?> getAllByGithubIdSync(List<int> githubIdValues) {
    final values = githubIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'githubId', values);
  }

  Future<int> deleteAllByGithubId(List<int> githubIdValues) {
    final values = githubIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'githubId', values);
  }

  int deleteAllByGithubIdSync(List<int> githubIdValues) {
    final values = githubIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'githubId', values);
  }

  Future<Id> putByGithubId(GithubUserEntity object) {
    return putByIndex(r'githubId', object);
  }

  Id putByGithubIdSync(GithubUserEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'githubId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByGithubId(List<GithubUserEntity> objects) {
    return putAllByIndex(r'githubId', objects);
  }

  List<Id> putAllByGithubIdSync(
    List<GithubUserEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'githubId', objects, saveLinks: saveLinks);
  }
}

extension GithubUserEntityQueryWhereSort
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QWhere> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhere> anyGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'githubId'),
      );
    });
  }
}

extension GithubUserEntityQueryWhere
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QWhereClause> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  githubIdEqualTo(int githubId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'githubId', value: [githubId]),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  githubIdNotEqualTo(int githubId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId',
                lower: [],
                upper: [githubId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId',
                lower: [githubId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId',
                lower: [githubId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId',
                lower: [],
                upper: [githubId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  githubIdGreaterThan(int githubId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId',
          lower: [githubId],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  githubIdLessThan(int githubId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId',
          lower: [],
          upper: [githubId],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterWhereClause>
  githubIdBetween(
    int lowerGithubId,
    int upperGithubId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId',
          lower: [lowerGithubId],
          includeLower: includeLower,
          upper: [upperGithubId],
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension GithubUserEntityQueryFilter
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QFilterCondition> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'avatarUrl',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'avatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'avatarUrl',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'bio'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'bio'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'bio',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'bio',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'bio',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'bio', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  bioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'bio', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'blog'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'blog'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'blog',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'blog',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'blog',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'blog', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  blogIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'blog', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'company'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'company'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'company',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'company',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'company',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'company', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  companyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'company', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'createdAt'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'createdAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'createdAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'email'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'email'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'email',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'email',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'email',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'email', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'followers'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'followers'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'followers', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'followers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'followers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followersBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'followers',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'following'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'following'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'following', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'following',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'following',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  followingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'following',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  githubIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'githubId', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  githubIdGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'githubId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  githubIdLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'githubId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  githubIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'githubId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'htmlUrl',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'htmlUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'htmlUrl',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  htmlUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  idGreaterThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  idLessThan(Id value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'location'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'location'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'location',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'location',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'location',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'location', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'location', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'login',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'login',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'login',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'login', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  loginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'login', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'name'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'name'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publicGists'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publicGists'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publicGists', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'publicGists',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'publicGists',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicGistsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'publicGists',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publicRepos'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publicRepos'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publicRepos', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'publicRepos',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'publicRepos',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  publicReposBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'publicRepos',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'updatedAt'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'updatedAt'),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'updatedAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterFilterCondition>
  updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'updatedAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension GithubUserEntityQueryObject
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QFilterCondition> {}

extension GithubUserEntityQueryLinks
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QFilterCondition> {}

extension GithubUserEntityQuerySortBy
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QSortBy> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> sortByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> sortByBlog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blog', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByBlogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blog', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByFollowers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followers', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByFollowersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followers', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByFollowing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'following', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByFollowingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'following', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> sortByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByPublicGists() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicGists', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByPublicGistsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicGists', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByPublicRepos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicRepos', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByPublicReposDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicRepos', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension GithubUserEntityQuerySortThenBy
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QSortThenBy> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenByBlog() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blog', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByBlogDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blog', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByCompany() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByCompanyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'company', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByFollowers() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followers', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByFollowersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'followers', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByFollowing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'following', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByFollowingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'following', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenByLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'login', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByPublicGists() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicGists', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByPublicGistsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicGists', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByPublicRepos() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicRepos', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByPublicReposDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'publicRepos', Sort.desc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension GithubUserEntityQueryWhereDistinct
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> {
  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> distinctByBio({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> distinctByBlog({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blog', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByCompany({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'company', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> distinctByEmail({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByFollowers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'followers');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByFollowing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'following');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'githubId');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByHtmlUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'htmlUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByLocation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> distinctByLogin({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'login', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByPublicGists() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publicGists');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByPublicRepos() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'publicRepos');
    });
  }

  QueryBuilder<GithubUserEntity, GithubUserEntity, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension GithubUserEntityQueryProperty
    on QueryBuilder<GithubUserEntity, GithubUserEntity, QQueryProperty> {
  QueryBuilder<GithubUserEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GithubUserEntity, String, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bio');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> blogProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blog');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> companyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'company');
    });
  }

  QueryBuilder<GithubUserEntity, DateTime?, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<GithubUserEntity, int?, QQueryOperations> followersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'followers');
    });
  }

  QueryBuilder<GithubUserEntity, int?, QQueryOperations> followingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'following');
    });
  }

  QueryBuilder<GithubUserEntity, int, QQueryOperations> githubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'githubId');
    });
  }

  QueryBuilder<GithubUserEntity, String, QQueryOperations> htmlUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'htmlUrl');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<GithubUserEntity, String, QQueryOperations> loginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'login');
    });
  }

  QueryBuilder<GithubUserEntity, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<GithubUserEntity, int?, QQueryOperations> publicGistsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publicGists');
    });
  }

  QueryBuilder<GithubUserEntity, int?, QQueryOperations> publicReposProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'publicRepos');
    });
  }

  QueryBuilder<GithubUserEntity, DateTime?, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
