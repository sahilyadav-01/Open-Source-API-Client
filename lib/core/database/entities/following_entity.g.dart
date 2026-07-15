// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFollowingEntityCollection on Isar {
  IsarCollection<FollowingEntity> get followingEntitys => this.collection();
}

const FollowingEntitySchema = CollectionSchema(
  name: r'FollowingEntity',
  id: 7024706928630705781,
  properties: {
    r'avatarUrl': PropertySchema(
      id: 0,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'targetUsername': PropertySchema(
      id: 1,
      name: r'targetUsername',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 2,
      name: r'username',
      type: IsarType.string,
    ),
  },

  estimateSize: _followingEntityEstimateSize,
  serialize: _followingEntitySerialize,
  deserialize: _followingEntityDeserialize,
  deserializeProp: _followingEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'username_targetUsername': IndexSchema(
      id: 4423542839078098041,
      name: r'username_targetUsername',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'username',
          type: IndexType.hash,
          caseSensitive: true,
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

  getId: _followingEntityGetId,
  getLinks: _followingEntityGetLinks,
  attach: _followingEntityAttach,
  version: '3.3.0-dev.1',
);

int _followingEntityEstimateSize(
  FollowingEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatarUrl.length * 3;
  bytesCount += 3 + object.targetUsername.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _followingEntitySerialize(
  FollowingEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatarUrl);
  writer.writeString(offsets[1], object.targetUsername);
  writer.writeString(offsets[2], object.username);
}

FollowingEntity _followingEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FollowingEntity();
  object.avatarUrl = reader.readString(offsets[0]);
  object.id = id;
  object.targetUsername = reader.readString(offsets[1]);
  object.username = reader.readString(offsets[2]);
  return object;
}

P _followingEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _followingEntityGetId(FollowingEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _followingEntityGetLinks(FollowingEntity object) {
  return [];
}

void _followingEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  FollowingEntity object,
) {
  object.id = id;
}

extension FollowingEntityByIndex on IsarCollection<FollowingEntity> {
  Future<FollowingEntity?> getByUsernameTargetUsername(
    String username,
    String targetUsername,
  ) {
    return getByIndex(r'username_targetUsername', [username, targetUsername]);
  }

  FollowingEntity? getByUsernameTargetUsernameSync(
    String username,
    String targetUsername,
  ) {
    return getByIndexSync(r'username_targetUsername', [
      username,
      targetUsername,
    ]);
  }

  Future<bool> deleteByUsernameTargetUsername(
    String username,
    String targetUsername,
  ) {
    return deleteByIndex(r'username_targetUsername', [
      username,
      targetUsername,
    ]);
  }

  bool deleteByUsernameTargetUsernameSync(
    String username,
    String targetUsername,
  ) {
    return deleteByIndexSync(r'username_targetUsername', [
      username,
      targetUsername,
    ]);
  }

  Future<List<FollowingEntity?>> getAllByUsernameTargetUsername(
    List<String> usernameValues,
    List<String> targetUsernameValues,
  ) {
    final len = usernameValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([usernameValues[i], targetUsernameValues[i]]);
    }

    return getAllByIndex(r'username_targetUsername', values);
  }

  List<FollowingEntity?> getAllByUsernameTargetUsernameSync(
    List<String> usernameValues,
    List<String> targetUsernameValues,
  ) {
    final len = usernameValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([usernameValues[i], targetUsernameValues[i]]);
    }

    return getAllByIndexSync(r'username_targetUsername', values);
  }

  Future<int> deleteAllByUsernameTargetUsername(
    List<String> usernameValues,
    List<String> targetUsernameValues,
  ) {
    final len = usernameValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([usernameValues[i], targetUsernameValues[i]]);
    }

    return deleteAllByIndex(r'username_targetUsername', values);
  }

  int deleteAllByUsernameTargetUsernameSync(
    List<String> usernameValues,
    List<String> targetUsernameValues,
  ) {
    final len = usernameValues.length;
    assert(
      targetUsernameValues.length == len,
      'All index values must have the same length',
    );
    final values = <List<dynamic>>[];
    for (var i = 0; i < len; i++) {
      values.add([usernameValues[i], targetUsernameValues[i]]);
    }

    return deleteAllByIndexSync(r'username_targetUsername', values);
  }

  Future<Id> putByUsernameTargetUsername(FollowingEntity object) {
    return putByIndex(r'username_targetUsername', object);
  }

  Id putByUsernameTargetUsernameSync(
    FollowingEntity object, {
    bool saveLinks = true,
  }) {
    return putByIndexSync(
      r'username_targetUsername',
      object,
      saveLinks: saveLinks,
    );
  }

  Future<List<Id>> putAllByUsernameTargetUsername(
    List<FollowingEntity> objects,
  ) {
    return putAllByIndex(r'username_targetUsername', objects);
  }

  List<Id> putAllByUsernameTargetUsernameSync(
    List<FollowingEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(
      r'username_targetUsername',
      objects,
      saveLinks: saveLinks,
    );
  }
}

extension FollowingEntityQueryWhereSort
    on QueryBuilder<FollowingEntity, FollowingEntity, QWhere> {
  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FollowingEntityQueryWhere
    on QueryBuilder<FollowingEntity, FollowingEntity, QWhereClause> {
  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
  idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
  usernameEqualToAnyTargetUsername(String username) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'username_targetUsername',
          value: [username],
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
  usernameNotEqualToAnyTargetUsername(String username) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [],
                upper: [username],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username],
                includeLower: false,
                upper: [],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username],
                includeLower: false,
                upper: [],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [],
                upper: [username],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
  usernameTargetUsernameEqualTo(String username, String targetUsername) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IndexWhereClause.equalTo(
          indexName: r'username_targetUsername',
          value: [username, targetUsername],
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
  usernameEqualToTargetUsernameNotEqualTo(
    String username,
    String targetUsername,
  ) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username],
                upper: [username, targetUsername],
                includeUpper: false,
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username, targetUsername],
                includeLower: false,
                upper: [username],
              ),
            );
      } else {
        return query
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username, targetUsername],
                includeLower: false,
                upper: [username],
              ),
            )
            .addWhereClause(
              IndexWhereClause.between(
                indexName: r'username_targetUsername',
                lower: [username],
                upper: [username, targetUsername],
                includeUpper: false,
              ),
            );
      }
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterWhereClause>
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

extension FollowingEntityQueryFilter
    on QueryBuilder<FollowingEntity, FollowingEntity, QFilterCondition> {
  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  targetUsernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  targetUsernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'username',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'username',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'username',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'username', value: ''),
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterFilterCondition>
  usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'username', value: ''),
      );
    });
  }
}

extension FollowingEntityQueryObject
    on QueryBuilder<FollowingEntity, FollowingEntity, QFilterCondition> {}

extension FollowingEntityQueryLinks
    on QueryBuilder<FollowingEntity, FollowingEntity, QFilterCondition> {}

extension FollowingEntityQuerySortBy
    on QueryBuilder<FollowingEntity, FollowingEntity, QSortBy> {
  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension FollowingEntityQuerySortThenBy
    on QueryBuilder<FollowingEntity, FollowingEntity, QSortThenBy> {
  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QAfterSortBy>
  thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension FollowingEntityQueryWhereDistinct
    on QueryBuilder<FollowingEntity, FollowingEntity, QDistinct> {
  QueryBuilder<FollowingEntity, FollowingEntity, QDistinct>
  distinctByAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QDistinct>
  distinctByTargetUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'targetUsername',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FollowingEntity, FollowingEntity, QDistinct> distinctByUsername({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension FollowingEntityQueryProperty
    on QueryBuilder<FollowingEntity, FollowingEntity, QQueryProperty> {
  QueryBuilder<FollowingEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FollowingEntity, String, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<FollowingEntity, String, QQueryOperations>
  targetUsernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetUsername');
    });
  }

  QueryBuilder<FollowingEntity, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
