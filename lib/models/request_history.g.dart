// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_history.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRequestHistoryCollection on Isar {
  IsarCollection<RequestHistory> get requestHistorys => this.collection();
}

const RequestHistorySchema = CollectionSchema(
  name: r'RequestHistory',
  id: -1966690726718866078,
  properties: {
    r'body': PropertySchema(id: 0, name: r'body', type: IsarType.string),
    r'headersJson': PropertySchema(
      id: 1,
      name: r'headersJson',
      type: IsarType.string,
    ),
    r'method': PropertySchema(id: 2, name: r'method', type: IsarType.string),
    r'paramsJson': PropertySchema(
      id: 3,
      name: r'paramsJson',
      type: IsarType.string,
    ),
    r'responseBody': PropertySchema(
      id: 4,
      name: r'responseBody',
      type: IsarType.string,
    ),
    r'responseDurationMs': PropertySchema(
      id: 5,
      name: r'responseDurationMs',
      type: IsarType.long,
    ),
    r'responseHeadersJson': PropertySchema(
      id: 6,
      name: r'responseHeadersJson',
      type: IsarType.string,
    ),
    r'responseSizeBytes': PropertySchema(
      id: 7,
      name: r'responseSizeBytes',
      type: IsarType.long,
    ),
    r'responseStatusCode': PropertySchema(
      id: 8,
      name: r'responseStatusCode',
      type: IsarType.long,
    ),
    r'timestamp': PropertySchema(
      id: 9,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'url': PropertySchema(id: 10, name: r'url', type: IsarType.string),
  },

  estimateSize: _requestHistoryEstimateSize,
  serialize: _requestHistorySerialize,
  deserialize: _requestHistoryDeserialize,
  deserializeProp: _requestHistoryDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},

  getId: _requestHistoryGetId,
  getLinks: _requestHistoryGetLinks,
  attach: _requestHistoryAttach,
  version: '3.3.0-dev.1',
);

int _requestHistoryEstimateSize(
  RequestHistory object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.body.length * 3;
  bytesCount += 3 + object.headersJson.length * 3;
  bytesCount += 3 + object.method.length * 3;
  bytesCount += 3 + object.paramsJson.length * 3;
  {
    final value = object.responseBody;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.responseHeadersJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _requestHistorySerialize(
  RequestHistory object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.body);
  writer.writeString(offsets[1], object.headersJson);
  writer.writeString(offsets[2], object.method);
  writer.writeString(offsets[3], object.paramsJson);
  writer.writeString(offsets[4], object.responseBody);
  writer.writeLong(offsets[5], object.responseDurationMs);
  writer.writeString(offsets[6], object.responseHeadersJson);
  writer.writeLong(offsets[7], object.responseSizeBytes);
  writer.writeLong(offsets[8], object.responseStatusCode);
  writer.writeDateTime(offsets[9], object.timestamp);
  writer.writeString(offsets[10], object.url);
}

RequestHistory _requestHistoryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RequestHistory();
  object.body = reader.readString(offsets[0]);
  object.headersJson = reader.readString(offsets[1]);
  object.id = id;
  object.method = reader.readString(offsets[2]);
  object.paramsJson = reader.readString(offsets[3]);
  object.responseBody = reader.readStringOrNull(offsets[4]);
  object.responseDurationMs = reader.readLongOrNull(offsets[5]);
  object.responseHeadersJson = reader.readStringOrNull(offsets[6]);
  object.responseSizeBytes = reader.readLongOrNull(offsets[7]);
  object.responseStatusCode = reader.readLongOrNull(offsets[8]);
  object.timestamp = reader.readDateTime(offsets[9]);
  object.url = reader.readString(offsets[10]);
  return object;
}

P _requestHistoryDeserializeProp<P>(
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
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _requestHistoryGetId(RequestHistory object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _requestHistoryGetLinks(RequestHistory object) {
  return [];
}

void _requestHistoryAttach(
  IsarCollection<dynamic> col,
  Id id,
  RequestHistory object,
) {
  object.id = id;
}

extension RequestHistoryQueryWhereSort
    on QueryBuilder<RequestHistory, RequestHistory, QWhere> {
  QueryBuilder<RequestHistory, RequestHistory, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RequestHistoryQueryWhere
    on QueryBuilder<RequestHistory, RequestHistory, QWhereClause> {
  QueryBuilder<RequestHistory, RequestHistory, QAfterWhereClause> idEqualTo(
    Id id,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<RequestHistory, RequestHistory, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterWhereClause> idBetween(
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
}

extension RequestHistoryQueryFilter
    on QueryBuilder<RequestHistory, RequestHistory, QFilterCondition> {
  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'body',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'body',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'body',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'body', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'body', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'headersJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'headersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'headersJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'headersJson', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  headersJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'headersJson', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition> idEqualTo(
    Id value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
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

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
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

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition> idBetween(
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

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'method',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'method',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'method',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'method', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  methodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'method', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'paramsJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'paramsJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'paramsJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'paramsJson', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  paramsJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'paramsJson', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'responseBody'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'responseBody'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'responseBody',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'responseBody',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'responseBody',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'responseBody', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseBodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'responseBody', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'responseDurationMs'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'responseDurationMs'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'responseDurationMs', value: value),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'responseDurationMs',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'responseDurationMs',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseDurationMsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'responseDurationMs',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'responseHeadersJson'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'responseHeadersJson'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'responseHeadersJson',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'responseHeadersJson',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'responseHeadersJson',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'responseHeadersJson', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseHeadersJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          property: r'responseHeadersJson',
          value: '',
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'responseSizeBytes'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'responseSizeBytes'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'responseSizeBytes', value: value),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'responseSizeBytes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'responseSizeBytes',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseSizeBytesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'responseSizeBytes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'responseStatusCode'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'responseStatusCode'),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'responseStatusCode', value: value),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'responseStatusCode',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'responseStatusCode',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  responseStatusCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'responseStatusCode',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  timestampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'timestamp', value: value),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  timestampGreaterThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'timestamp',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  timestampLessThan(DateTime value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'timestamp',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'timestamp',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlLessThan(String value, {bool include = false, bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'url',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'url',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'url', value: ''),
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterFilterCondition>
  urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'url', value: ''),
      );
    });
  }
}

extension RequestHistoryQueryObject
    on QueryBuilder<RequestHistory, RequestHistory, QFilterCondition> {}

extension RequestHistoryQueryLinks
    on QueryBuilder<RequestHistory, RequestHistory, QFilterCondition> {}

extension RequestHistoryQuerySortBy
    on QueryBuilder<RequestHistory, RequestHistory, QSortBy> {
  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByHeadersJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headersJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByHeadersJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headersJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByParamsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paramsJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByParamsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paramsJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseBody', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseBody', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseDurationMs', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseDurationMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseDurationMs', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseHeadersJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseHeadersJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseHeadersJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseHeadersJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseSizeBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseSizeBytes', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseSizeBytesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseSizeBytes', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseStatusCode', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByResponseStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseStatusCode', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension RequestHistoryQuerySortThenBy
    on QueryBuilder<RequestHistory, RequestHistory, QSortThenBy> {
  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByHeadersJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headersJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByHeadersJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headersJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'method', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByParamsJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paramsJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByParamsJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paramsJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseBody', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseBody', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseDurationMs', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseDurationMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseDurationMs', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseHeadersJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseHeadersJson', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseHeadersJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseHeadersJson', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseSizeBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseSizeBytes', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseSizeBytesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseSizeBytes', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseStatusCode', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByResponseStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responseStatusCode', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy>
  thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension RequestHistoryQueryWhereDistinct
    on QueryBuilder<RequestHistory, RequestHistory, QDistinct> {
  QueryBuilder<RequestHistory, RequestHistory, QDistinct> distinctByBody({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'body', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByHeadersJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headersJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct> distinctByMethod({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'method', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct> distinctByParamsJson({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paramsJson', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByResponseBody({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseBody', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByResponseDurationMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseDurationMs');
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByResponseHeadersJson({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(
        r'responseHeadersJson',
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByResponseSizeBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseSizeBytes');
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByResponseStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responseStatusCode');
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct>
  distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<RequestHistory, RequestHistory, QDistinct> distinctByUrl({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension RequestHistoryQueryProperty
    on QueryBuilder<RequestHistory, RequestHistory, QQueryProperty> {
  QueryBuilder<RequestHistory, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RequestHistory, String, QQueryOperations> bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'body');
    });
  }

  QueryBuilder<RequestHistory, String, QQueryOperations> headersJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headersJson');
    });
  }

  QueryBuilder<RequestHistory, String, QQueryOperations> methodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'method');
    });
  }

  QueryBuilder<RequestHistory, String, QQueryOperations> paramsJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paramsJson');
    });
  }

  QueryBuilder<RequestHistory, String?, QQueryOperations>
  responseBodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseBody');
    });
  }

  QueryBuilder<RequestHistory, int?, QQueryOperations>
  responseDurationMsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseDurationMs');
    });
  }

  QueryBuilder<RequestHistory, String?, QQueryOperations>
  responseHeadersJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseHeadersJson');
    });
  }

  QueryBuilder<RequestHistory, int?, QQueryOperations>
  responseSizeBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseSizeBytes');
    });
  }

  QueryBuilder<RequestHistory, int?, QQueryOperations>
  responseStatusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responseStatusCode');
    });
  }

  QueryBuilder<RequestHistory, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<RequestHistory, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
