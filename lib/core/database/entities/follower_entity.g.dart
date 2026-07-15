// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFollowerEntityCollection on Isar {
  IsarCollection<FollowerEntity> get followerEntitys => this.collection();
}

const FollowerEntitySchema = CollectionSchema(
  name: r'FollowerEntity',
  id: -2660362286276403888,
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

  estimateSize: _followerEntityEstimateSize,
  serialize: _followerEntitySerialize,
  deserialize: _followerEntityDeserialize,
  deserializeProp: _followerEntityDeserializeProp,
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

  getId: _followerEntityGetId,
  getLinks: _followerEntityGetLinks,
  attach: _followerEntityAttach,
  version: '3.3.0-dev.1',
);

int _followerEntityEstimateSize(
  FollowerEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.avatarUrl.length * 3;
  bytesCount += 3 + object.targetUsername.length * 3;
  bytesCount += 3 + object.username.length * 3;
  return bytesCount;
}

void _followerEntitySerialize(
  FollowerEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatarUrl);
  writer.writeString(offsets[1], object.targetUsername);
  writer.writeString(offsets[2], object.username);
}

FollowerEntity _followerEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FollowerEntity();
  object.avatarUrl = reader.readString(offsets[0]);
  object.id = id;
  object.targetUsername = reader.readString(offsets[1]);
  object.username = reader.readString(offsets[2]);
  return object;
}

P _followerEntityDeserializeProp<P>(
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

Id _followerEntityGetId(FollowerEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _followerEntityGetLinks(FollowerEntity object) {
  return [];
}

void _followerEntityAttach(
  IsarCollection<dynamic> col,
  Id id,
  FollowerEntity object,
) {
  object.id = id;
}

extension FollowerEntityByIndex on IsarCollection<FollowerEntity> {
  Future<FollowerEntity?> getByUsernameTargetUsername(
    String username,
    String targetUsername,
  ) {
    return getByIndex(r'username_targetUsername', [username, targetUsername]);
  }

  FollowerEntity? getByUsernameTargetUsernameSync(
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

  Future<List<FollowerEntity?>> getAllByUsernameTargetUsername(
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

  List<FollowerEntity?> getAllByUsernameTargetUsernameSync(
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

  Future<Id> putByUsernameTargetUsername(FollowerEntity object) {
    return putByIndex(r'username_targetUsername', object);
  }

  Id putByUsernameTargetUsernameSync(
    FollowerEntity object, {
    bool saveLinks = true,
  }) {
    return putByIndexSync(
      r'username_targetUsername',
      object,
      saveLinks: saveLinks,
    );
  }

  Future<List<Id>> putAllByUsernameTargetUsername(
    List<FollowerEntity> objects,
  ) {
    return putAllByIndex(r'username_targetUsername', objects);
  }

  List<Id> putAllByUsernameTargetUsernameSync(
    List<FollowerEntity> objects, {
    bool saveLinks = true,
  }) {
    return putAllByIndexSync(
      r'username_targetUsername',
      objects,
      saveLinks: saveLinks,
    );
  }
}

extension FollowerEntityQueryWhereSort
    on QueryBuilder<FollowerEntity, FollowerEntity, QWhere> {
  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FollowerEntityQueryWhere
    on QueryBuilder<FollowerEntity, FollowerEntity, QWhereClause> {
  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause> idNotEqualTo(
    Id id,
  ) {
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterWhereClause>
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

extension FollowerEntityQueryFilter
    on QueryBuilder<FollowerEntity, FollowerEntity, QFilterCondition> {
  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'avatarUrl', value: ''),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  targetUsernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  targetUsernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'targetUsername', value: ''),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
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

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'username', value: ''),
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterFilterCondition>
  usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'username', value: ''),
      );
    });
  }
}

extension FollowerEntityQueryObject
    on QueryBuilder<FollowerEntity, FollowerEntity, QFilterCondition> {}

extension FollowerEntityQueryLinks
    on QueryBuilder<FollowerEntity, FollowerEntity, QFilterCondition> {}

extension FollowerEntityQuerySortBy
    on QueryBuilder<FollowerEntity, FollowerEntity, QSortBy> {
  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  sortByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  sortByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension FollowerEntityQuerySortThenBy
    on QueryBuilder<FollowerEntity, FollowerEntity, QSortThenBy> {
  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  thenByTargetUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  thenByTargetUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetUsername', Sort.desc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QAfterSortBy>
  thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension FollowerEntityQueryWhereDistinct
    on QueryBuilder<FollowerEntity, FollowerEntity, QDistinct> {
  QueryBuilder<FollowerEntity, FollowerEntity, QDistinct> distinctByAvatarUrl({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QDistinct>
  distinctByTargetUsername({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'targetUsername',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<FollowerEntity, FollowerEntity, QDistinct> distinctByUsername({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension FollowerEntityQueryProperty
    on QueryBuilder<FollowerEntity, FollowerEntity, QQueryProperty> {
  QueryBuilder<FollowerEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FollowerEntity, String, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<FollowerEntity, String, QQueryOperations>
  targetUsernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetUsername');
    });
  }

  QueryBuilder<FollowerEntity, String, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
