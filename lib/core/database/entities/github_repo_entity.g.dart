// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGithubRepoEntityCollection on Isar {
  IsarCollection<GithubRepoEntity> get githubRepoEntitys => this.collection();
}

const GithubRepoEntitySchema = CollectionSchema(
  name: r'GithubRepoEntity',
  id: 4413952666103608583,
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
    r'updatedAt': PropertySchema(
      id: 13,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'watchersCount': PropertySchema(
      id: 14,
      name: r'watchersCount',
      type: IsarType.long,
    ),
  },

  estimateSize: _githubRepoEntityEstimateSize,
  serialize: _githubRepoEntitySerialize,
  deserialize: _githubRepoEntityDeserialize,
  deserializeProp: _githubRepoEntityDeserializeProp,
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

  getId: _githubRepoEntityGetId,
  getLinks: _githubRepoEntityGetLinks,
  attach: _githubRepoEntityAttach,
  version: '3.3.0-dev.1',
);

int _githubRepoEntityEstimateSize(
  GithubRepoEntity object,
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
  return bytesCount;
}

void _githubRepoEntitySerialize(
  GithubRepoEntity object,
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
  writer.writeDateTime(offsets[13], object.updatedAt);
  writer.writeLong(offsets[14], object.watchersCount);
}

GithubRepoEntity _githubRepoEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GithubRepoEntity();
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
  object.updatedAt = reader.readDateTime(offsets[13]);
  object.watchersCount = reader.readLong(offsets[14]);
  return object;
}

P _githubRepoEntityDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _githubRepoEntityGetId(GithubRepoEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _githubRepoEntityGetLinks(GithubRepoEntity object) {
  return [];
}

void _githubRepoEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  GithubRepoEntity object,
) {
  object.id = id;
}

extension GithubRepoEntityByIndex on IsarCollection<GithubRepoEntity> {
  Future<GithubRepoEntity?> getByGithubId(int githubId) {
    return getByIndex(r'githubId', [githubId]);
  }

  GithubRepoEntity? getByGithubIdSync(int githubId) {
    return getByIndexSync(r'githubId', [githubId]);
  }

  Future<bool> deleteByGithubId(int githubId) {
    return deleteByIndex(r'githubId', [githubId]);
  }

  bool deleteByGithubIdSync(int githubId) {
    return deleteByIndexSync(r'githubId', [githubId]);
  }

  Future<List<GithubRepoEntity?>> getAllByGithubId(List<int> githubIdValues) {
    final values = githubIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'githubId', values);
  }

  List<GithubRepoEntity?> getAllByGithubIdSync(List<int> githubIdValues) {
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

  Future<Id> putByGithubId(GithubRepoEntity object) {
    return putByIndex(r'githubId', object);
  }

  Id putByGithubIdSync(GithubRepoEntity object, {bool saveLinks = true}) {
    return putByIndexSync(r'githubId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByGithubId(List<GithubRepoEntity> objects) {
    return putAllByIndex(r'githubId', objects);
  }

  List<Id> putAllByGithubIdSync(
    List<GithubRepoEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(r'githubId', objects, saveLinks: saveLinks);
  }
}

extension GithubRepoEntityQueryWhereSort
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QWhere> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhere> anyGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'githubId'),
      );
    });
  }
}

extension GithubRepoEntityQueryWhere
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QWhereClause> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
  idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
  githubIdEqualTo(int githubId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(indexName: r'githubId', value: [githubId]),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterWhereClause>
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

extension GithubRepoEntityQueryFilter
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QFilterCondition> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'createdAt', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'description'),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'description'),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  forkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'fork', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  forksCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'forksCount', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'fullName', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'fullName', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  githubIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'githubId', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  htmlUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  htmlUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'htmlUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'language'),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'language'),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ownerAvatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  ownerAvatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'ownerAvatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  ownerLoginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ownerLogin', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  ownerLoginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'ownerLogin', value: ''),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  privateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'private', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  stargazersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'stargazersCount', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'updatedAt', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
  watchersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'watchersCount', value: value),
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterFilterCondition>
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

extension GithubRepoEntityQueryObject
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QFilterCondition> {}

extension GithubRepoEntityQueryLinks
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QFilterCondition> {}

extension GithubRepoEntityQuerySortBy
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QSortBy> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy> sortByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByForkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByPrivateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  sortByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension GithubRepoEntityQuerySortThenBy
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QSortThenBy> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy> thenByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByForkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fork', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByGithubIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'githubId', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByPrivateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'private', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QAfterSortBy>
  thenByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension GithubRepoEntityQueryWhereDistinct
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct> {
  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct> distinctByFork() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fork');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forksCount');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByFullName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByGithubId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'githubId');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByHtmlUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'htmlUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByLanguage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByOwnerAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'ownerAvatarUrl',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByOwnerLogin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerLogin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByPrivate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'private');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stargazersCount');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<GithubRepoEntity, GithubRepoEntity, QDistinct>
  distinctByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchersCount');
    });
  }
}

extension GithubRepoEntityQueryProperty
    on QueryBuilder<GithubRepoEntity, GithubRepoEntity, QQueryProperty> {
  QueryBuilder<GithubRepoEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GithubRepoEntity, DateTime, QQueryOperations>
  createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<GithubRepoEntity, String?, QQueryOperations>
  descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<GithubRepoEntity, bool, QQueryOperations> forkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fork');
    });
  }

  QueryBuilder<GithubRepoEntity, int, QQueryOperations> forksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forksCount');
    });
  }

  QueryBuilder<GithubRepoEntity, String, QQueryOperations> fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<GithubRepoEntity, int, QQueryOperations> githubIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'githubId');
    });
  }

  QueryBuilder<GithubRepoEntity, String, QQueryOperations> htmlUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'htmlUrl');
    });
  }

  QueryBuilder<GithubRepoEntity, String?, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<GithubRepoEntity, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<GithubRepoEntity, String, QQueryOperations>
  ownerAvatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerAvatarUrl');
    });
  }

  QueryBuilder<GithubRepoEntity, String, QQueryOperations>
  ownerLoginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerLogin');
    });
  }

  QueryBuilder<GithubRepoEntity, bool, QQueryOperations> privateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'private');
    });
  }

  QueryBuilder<GithubRepoEntity, int, QQueryOperations>
  stargazersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stargazersCount');
    });
  }

  QueryBuilder<GithubRepoEntity, DateTime, QQueryOperations>
  updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<GithubRepoEntity, int, QQueryOperations>
  watchersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchersCount');
    });
  }
}
