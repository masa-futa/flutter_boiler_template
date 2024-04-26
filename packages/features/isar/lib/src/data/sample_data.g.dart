// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSampleDataCollection on Isar {
  IsarCollection<SampleData> get sampleDatas => this.collection();
}

const SampleDataSchema = CollectionSchema(
  name: r'SampleData',
  id: 7542687932931957699,
  properties: {},
  estimateSize: _sampleDataEstimateSize,
  serialize: _sampleDataSerialize,
  deserialize: _sampleDataDeserialize,
  deserializeProp: _sampleDataDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'sample': LinkSchema(
      id: -5265227181246500999,
      name: r'sample',
      target: r'SampleEntity',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _sampleDataGetId,
  getLinks: _sampleDataGetLinks,
  attach: _sampleDataAttach,
  version: '3.1.0+1',
);

int _sampleDataEstimateSize(
  SampleData object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _sampleDataSerialize(
  SampleData object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
SampleData _sampleDataDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SampleData();
  object.id = id;
  return object;
}

P _sampleDataDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sampleDataGetId(SampleData object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sampleDataGetLinks(SampleData object) {
  return [object.sample];
}

void _sampleDataAttach(IsarCollection<dynamic> col, Id id, SampleData object) {
  object.id = id;
  object.sample.attach(col, col.isar.collection<SampleEntity>(), r'sample', id);
}

extension SampleDataQueryWhereSort
    on QueryBuilder<SampleData, SampleData, QWhere> {
  QueryBuilder<SampleData, SampleData, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SampleDataQueryWhere
    on QueryBuilder<SampleData, SampleData, QWhereClause> {
  QueryBuilder<SampleData, SampleData, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SampleData, SampleData, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SampleDataQueryFilter
    on QueryBuilder<SampleData, SampleData, QFilterCondition> {
  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SampleDataQueryObject
    on QueryBuilder<SampleData, SampleData, QFilterCondition> {}

extension SampleDataQueryLinks
    on QueryBuilder<SampleData, SampleData, QFilterCondition> {
  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> sample(
      FilterQuery<SampleEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'sample');
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition>
      sampleLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sample', length, true, length, true);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition> sampleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sample', 0, true, 0, true);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition>
      sampleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sample', 0, false, 999999, true);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition>
      sampleLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sample', 0, true, length, include);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition>
      sampleLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'sample', length, include, 999999, true);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterFilterCondition>
      sampleLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'sample', lower, includeLower, upper, includeUpper);
    });
  }
}

extension SampleDataQuerySortBy
    on QueryBuilder<SampleData, SampleData, QSortBy> {}

extension SampleDataQuerySortThenBy
    on QueryBuilder<SampleData, SampleData, QSortThenBy> {
  QueryBuilder<SampleData, SampleData, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SampleData, SampleData, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension SampleDataQueryWhereDistinct
    on QueryBuilder<SampleData, SampleData, QDistinct> {}

extension SampleDataQueryProperty
    on QueryBuilder<SampleData, SampleData, QQueryProperty> {
  QueryBuilder<SampleData, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }
}
