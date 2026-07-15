// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starred_repo_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStarredRepoEntityCollection on Isar {
  IsarCollection<StarredRepoEntity> get starredRepoEntitys => this.collection();
}

const StarredRepoEntitySchema = CollectionSchema(
  name: r'StarredRepoEntity',
  id: -5953187098790168075,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'fork': PropertySchema(id: 2, name: r'fork', type: IsarType.bool),
    r'forksCount': PropertySchema(
      id: 3,
      name: r'forksCount',
      type: IsarType.long,
    ),
    r'fullName': PropertySchema(
      id: 4,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'githubId': PropertySchema(id: 5, name: r'githubId', type: IsarType.long),
    r'htmlUrl': PropertySchema(id: 6, name: r'htmlUrl', type: IsarType.string),
    r'language': PropertySchema(
      id: 7,
      name: r'language',
      type: IsarType.string,
    ),
    r'name': PropertySchema(id: 8, name: r'name', type: IsarType.string),
    r'ownerAvatarUrl': PropertySchema(
      id: 9,
      name: r'ownerAvatarUrl',
      type: IsarType.string,
    ),
    r'ownerLogin': PropertySchema(
      id: 10,
      name: r'ownerLogin',
      type: IsarType.string,
    ),
    r'private': PropertySchema(id: 11, name: r'private', type: IsarType.bool),
    r'stargazersCount': PropertySchema(
      id: 12,
      name: r'stargazersCount',
      type: IsarType.long,
    ),
    r'starredAt': PropertySchema(
      id: 13,
      name: r'starredAt',
      type: IsarType.dateTime,
    ),
    r'targetUsername': PropertySchema(
      id: 14,
      name: r'targetUsername',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 15,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'watchersCount': PropertySchema(
      id: 16,
      name: r'watchersCount',
      type: IsarType.long,
    ),
  },

  estimateSize: _starredRepoEntityEstimateSize,
  serialize: _starredRepoEntitySerialize,
  deserialize: _starredRepoEntityDeserialize,
  deserializeProp: _starredRepoEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'githubId_targetUsername': IndexSchema(
      id: 7442670612350696486,
      name: r'githubId_targetUsername',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'githubId',
          type: IndexType.value,
          caseSensitive: false,
        ),
        IndexPropertySchema(
          name: r'targetUsername',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
    r'targetUsername': IndexSchema(
      id: 5903736532050978294,
      name: r'targetUsername',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'targetUsername',
          type: IndexType.hash,
          caseSensitive: true,
        ),
      ],
    ),
  },
  links: {},
  embeddedSchemas: {},

  getId: _starredRepoEntityGetId,
  getLinks: _starredRepoEntityGetLinks,
  attach: _starredRepoEntityAttach,
  version: '3.3.0-dev.1',
);

int _starredRepoEntityEstimateSize(
  StarredRepoEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.fullName.length * 3;
  bytesCount += 3 + object.htmlUrl.length * 3;
  {
    final value = object.language;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.ownerAvatarUrl.length * 3;
  bytesCount += 3 + object.ownerLogin.length * 3;
  bytesCount += 3 + object.targetUsername.length * 3;
  return bytesCount;
}

void _starredRepoEntitySerialize(
  StarredRepoEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.description);
  writer.writeBool(offsets[2], object.fork);
  writer.writeLong(offsets[3], object.forksCount);
  writer.writeString(offsets[4], object.fullName);
  writer.writeLong(offsets[5], object.githubId);
  writer.writeString(offsets[6], object.htmlUrl);
  writer.writeString(offsets[7], object.language);
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.ownerAvatarUrl);
  writer.writeString(offsets[10], object.ownerLogin);
  writer.writeBool(offsets[11], object.private);
  writer.writeLong(offsets[12], object.stargazersCount);
  writer.writeDateTime(offsets[13], object.starredAt);
  writer.writeString(offsets[14], object.targetUsername);
  writer.writeDateTime(offsets[15], object.updatedAt);
  writer.writeLong(offsets[16], object.watchersCount);
}

StarredRepoEntity _starredRepoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StarredRepoEntity();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.description = reader.readStringOrNull(offsets[1]);
  object.fork = reader.readBool(offsets[2]);
  object.forksCount = reader.readLong(offsets[3]);
  object.fullName = reader.readString(offsets[4]);
  object.githubId = reader.readLong(offsets[5]);
  object.htmlUrl = reader.readString(offsets[6]);
  object.id = id;
  object.language = reader.readStringOrNull(offsets[7]);
  object.name = reader.readString(offsets[8]);
  object.ownerAvatarUrl = reader.readString(offsets[9]);
  object.ownerLogin = reader.readString(offsets[10]);
  object.private = reader.readBool(offsets[11]);
  object.stargazersCount = reader.readLong(offsets[12]);
  object.starredAt = reader.readDateTime(offsets[13]);
  object.targetUsername = reader.readString(offsets[14]);
  object.updatedAt = reader.readDateTime(offsets[15]);
  object.watchersCount = reader.readLong(offsets[16]);
  return object;
}

P _starredRepoEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readDateTime(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTime(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _starredRepoEntityGetId(StarredRepoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _starredRepoEntityGetLinks(
  StarredRepoEntity object,
) {
  return [];
}

void _starredRepoEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  StarredRepoEntity object,
) {
  object.id = id;
}

extension StarredRepoEntityByIndex on IsarCollection<StarredRepoEntity> {
  Future<StarredRepoEntity?> getByGithubIdTargetUsername(
    int githubId,
    String targetUsername,
  ) {
    return getByIndex(r'githubId_targetUsername', [githubId, targetUsername]);
  }

  StarredRepoEntity? getByGithubIdTargetUsernameSync(
    int githubId,
    String targetUsername,
  ) {
    return getByIndexSync(r'githubId_targetUsername', [
      githubId,
      targetUsername,
    ]);
  }

  Future<bool> deleteByGithubIdTargetUsername(
    int githubId,
    String targetUsername,
  ) {
    return deleteByIndex(r'githubId_targetUsername', [
      githubId,
      targetUsername,
    ]);
  }

  bool deleteByGithubIdTargetUsernameSync(int githubId, String targetUsername) {
    return deleteByIndexSync(r'githubId_targetUsername', [
      githubId,
      targetUsername,
    ]);
  }

  Future<List<StarredRepoEntity?>> getAllByGithubIdTargetUsername(
    List<int> githubIdValues,
    List<String> targetUsernameValues,
  ) {
    final len = githubIdValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([githubIdValues[i], targetUsernameValues[i]]);
    }

    return getAllByIndex(r'githubId_targetUsername', values);
  }

  List<StarredRepoEntity?> getAllByGithubIdTargetUsernameSync(
    List<int> githubIdValues,
    List<String> targetUsernameValues,
  ) {
    final len = githubIdValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([githubIdValues[i], targetUsernameValues[i]]);
    }

    return getAllByIndexSync(r'githubId_targetUsername', values);
  }

  Future<int> deleteAllByGithubIdTargetUsername(
    List<int> githubIdValues,
    List<String> targetUsernameValues,
  ) {
    final len = githubIdValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([githubIdValues[i], targetUsernameValues[i]]);
    }

    return deleteAllByIndex(r'githubId_targetUsername', values);
  }

  int deleteAllByGithubIdTargetUsernameSync(
    List<int> githubIdValues,
    List<String> targetUsernameValues,
  ) {
    final len = githubIdValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([githubIdValues[i], targetUsernameValues[i]]);
    }

    return deleteAllByIndexSync(r'githubId_targetUsername', values);
  }

  Future<Id> putByGithubIdTargetUsername(StarredRepoEntity object) {
    return putByIndex(r'githubId_targetUsername', object);
  }

  Id putByGithubIdTargetUsernameSync(
    StarredRepoEntity object, {
    bool saveLinks = true,
  }) {
    return putByIndexSync(
      r'githubId_targetUsername',
      object,
      saveLinks: saveLinks,
    );
  }

  Future<List<Id>> putAllByGithubIdTargetUsername(
    List<StarredRepoEntity> objects,
  ) {
    return putAllByIndex(r'githubId_targetUsername', objects);
  }

  List<Id> putAllByGithubIdTargetUsernameSync(
    List<StarredRepoEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(
      r'githubId_targetUsername',
      objects,
      saveLinks: saveLinks,
    );
  }
}

extension StarredRepoEntityQueryWhereSort
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QWhere> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StarredRepoEntityQueryWhere
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QWhereClause> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  idBetween(
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdEqualToAnyTargetUsername(int githubId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'githubId_targetUsername',
          value: [githubId],
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdNotEqualToAnyTargetUsername(int githubId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [],
                upper: [githubId],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [],
                upper: [githubId],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdGreaterThanAnyTargetUsername(int githubId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId_targetUsername',
          lower: [githubId],
          includeLower: include,
          upper: [],
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdLessThanAnyTargetUsername(int githubId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId_targetUsername',
          lower: [],
          upper: [githubId],
          includeUpper: include,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdBetweenAnyTargetUsername(
    int lowerGithubId,
    int upperGithubId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.between(
          indexName: r'githubId_targetUsername',
          lower: [lowerGithubId],
          includeLower: includeLower,
          upper: [upperGithubId],
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdTargetUsernameEqualTo(int githubId, String targetUsername) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'githubId_targetUsername',
          value: [githubId, targetUsername],
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  githubIdEqualToTargetUsernameNotEqualTo(int githubId, String targetUsername) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId],
                upper: [githubId, targetUsername],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId, targetUsername],
                includeLower: false,
                upper: [githubId],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId, targetUsername],
                includeLower: false,
                upper: [githubId],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'githubId_targetUsername',
                lower: [githubId],
                upper: [githubId, targetUsername],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  targetUsernameEqualTo(String targetUsername) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'targetUsername',
          value: [targetUsername],
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterWhereClause>
  targetUsernameNotEqualTo(String targetUsername) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'targetUsername',
                lower: [],
                upper: [targetUsername],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'targetUsername',
                lower: [targetUsername],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'targetUsername',
                lower: [targetUsername],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'targetUsername',
                lower: [],
                upper: [targetUsername],
                includeUpper: false,
              ),
            );
      }
    });
  }
}

extension StarredRepoEntityQueryFilter
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QFilterCondition> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  createdAtGreaterThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  createdAtLessThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  createdAtBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'description'),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'description'),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'description',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'description',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  forkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'fork', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  forksCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'forksCount', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  forksCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'forksCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  forksCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'forksCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  forksCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'forksCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'fullName',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'fullName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'fullName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'fullName', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'fullName', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  githubIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'githubId', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  htmlUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  htmlUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'language'),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'language'),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'language',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'language',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameGreaterThan(
    String value, {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameLessThan(
    String value, {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameBetween(
    String lower,
    String upper, {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ownerAvatarUrl',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'ownerAvatarUrl',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'ownerAvatarUrl',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ownerAvatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'ownerAvatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'ownerLogin',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'ownerLogin',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'ownerLogin',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ownerLogin', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  ownerLoginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'ownerLogin', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  privateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'private', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  stargazersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'stargazersCount', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  stargazersCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'stargazersCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  stargazersCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'stargazersCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  stargazersCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'stargazersCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  starredAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'starredAt', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  starredAtGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'starredAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  starredAtLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'starredAt',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  starredAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'starredAt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'targetUsername',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'targetUsername',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'targetUsername',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  targetUsernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  updatedAtGreaterThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  updatedAtLessThan(DateTime value, {bool include = false}) {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  updatedAtBetween(
    DateTime lower,
    DateTime upper, {
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

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  watchersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'watchersCount', value: value),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  watchersCountGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'watchersCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  watchersCountLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'watchersCount',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterFilterCondition>
  watchersCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'watchersCount',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension StarredRepoEntityQueryObject
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QFilterCondition> {}

extension StarredRepoEntityQueryLinks
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QFilterCondition> {}

extension StarredRepoEntityQuerySortBy
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QSortBy> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByForkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByPrivateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByStarredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starredAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByStarredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starredAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  sortByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension StarredRepoEntityQuerySortThenBy
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QSortThenBy> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByForkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByPrivateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByStarredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starredAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByStarredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'starredAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QAfterSortBy>
  thenByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension StarredRepoEntityQueryWhereDistinct
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct> {
  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fork');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forksCount');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByFullName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'githubId');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByHtmlUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'htmlUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByOwnerAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'ownerAvatarUrl',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByOwnerLogin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerLogin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'private');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stargazersCount');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByStarredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'starredAt');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByTargetUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'targetUsername',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<StarredRepoEntity, StarredRepoEntity, QDistinct>
  distinctByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchersCount');
    });
  }
}

extension StarredRepoEntityQueryProperty
    on QueryBuilder<StarredRepoEntity, StarredRepoEntity, QQueryProperty> {
  QueryBuilder<StarredRepoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StarredRepoEntity, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<StarredRepoEntity, String?, QQueryOperations>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<StarredRepoEntity, bool, QQueryOperations> forkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fork');
    });
  }

  QueryBuilder<StarredRepoEntity, int, QQueryOperations> forksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forksCount');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations> fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<StarredRepoEntity, int, QQueryOperations> githubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'githubId');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations> htmlUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'htmlUrl');
    });
  }

  QueryBuilder<StarredRepoEntity, String?, QQueryOperations>
  languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations>
  ownerAvatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerAvatarUrl');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations>
  ownerLoginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerLogin');
    });
  }

  QueryBuilder<StarredRepoEntity, bool, QQueryOperations> privateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'private');
    });
  }

  QueryBuilder<StarredRepoEntity, int, QQueryOperations>
  stargazersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stargazersCount');
    });
  }

  QueryBuilder<StarredRepoEntity, DateTime, QQueryOperations>
  starredAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'starredAt');
    });
  }

  QueryBuilder<StarredRepoEntity, String, QQueryOperations>
  targetUsernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetUsername');
    });
  }

  QueryBuilder<StarredRepoEntity, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<StarredRepoEntity, int, QQueryOperations>
  watchersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchersCount');
    });
  }
}
