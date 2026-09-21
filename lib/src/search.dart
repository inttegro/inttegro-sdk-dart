part of '../inttegro.dart';

final class ResourceSearchOperator implements _InttegroValue {
  final String value;
  const ResourceSearchOperator(this.value);
  static const equal = ResourceSearchOperator('eq');
  static const anyOf = ResourceSearchOperator('in');
  factory ResourceSearchOperator.fromJson(Object? value) =>
      ResourceSearchOperator(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchOperator && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchSortField implements _InttegroValue {
  final String value;
  const ResourceSearchSortField(this.value);
  static const relevance = ResourceSearchSortField('relevance');
  static const updatedAt = ResourceSearchSortField('updated_at');
  static const publishedAt = ResourceSearchSortField('published_at');
  factory ResourceSearchSortField.fromJson(Object? value) =>
      ResourceSearchSortField(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchSortField && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchSortDirection implements _InttegroValue {
  final String value;
  const ResourceSearchSortDirection(this.value);
  static const ascending = ResourceSearchSortDirection('asc');
  static const descending = ResourceSearchSortDirection('desc');
  factory ResourceSearchSortDirection.fromJson(Object? value) =>
      ResourceSearchSortDirection(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchSortDirection && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchResourceType implements _InttegroValue {
  final String value;
  const ResourceSearchResourceType(this.value);
  static const customer = ResourceSearchResourceType('customer');
  static const financialAccount = ResourceSearchResourceType(
    'financial_account',
  );
  static const order = ResourceSearchResourceType('order');
  static const payout = ResourceSearchResourceType('payout');
  static const product = ResourceSearchResourceType('product');
  factory ResourceSearchResourceType.fromJson(Object? value) =>
      ResourceSearchResourceType(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchResourceType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchTotalRelation implements _InttegroValue {
  final String value;
  const ResourceSearchTotalRelation(this.value);
  static const exact = ResourceSearchTotalRelation('exact');
  static const lowerBound = ResourceSearchTotalRelation('lower_bound');
  factory ResourceSearchTotalRelation.fromJson(Object? value) =>
      ResourceSearchTotalRelation(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchTotalRelation && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchFreshnessState implements _InttegroValue {
  final String value;
  const ResourceSearchFreshnessState(this.value);
  static const current = ResourceSearchFreshnessState('current');
  static const delayed = ResourceSearchFreshnessState('delayed');
  static const partial = ResourceSearchFreshnessState('partial');
  static const unknown = ResourceSearchFreshnessState('unknown');
  static const unavailable = ResourceSearchFreshnessState('unavailable');
  factory ResourceSearchFreshnessState.fromJson(Object? value) =>
      ResourceSearchFreshnessState(value as String);
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ResourceSearchFreshnessState && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}

final class ResourceSearchFilter implements _InttegroValue {
  final String field;
  final ResourceSearchOperator operator;
  final List<String> values;
  const ResourceSearchFilter({
    required this.field,
    required this.operator,
    required this.values,
  });
  factory ResourceSearchFilter.fromJson(Map<String, Object?> json) =>
      ResourceSearchFilter(
        field: json['field'] as String,
        operator: ResourceSearchOperator.fromJson(json['operator']),
        values: (json['values'] as List).cast<String>(),
      );
  @override
  Map<String, Object?> toJson() => {
        'field': field,
        'operator': operator.toJson(),
        'values': values,
      };
}

final class ResourceSearchFacet implements _InttegroValue {
  final String field;
  final int? limit;
  const ResourceSearchFacet({required this.field, this.limit});
  factory ResourceSearchFacet.fromJson(Map<String, Object?> json) =>
      ResourceSearchFacet(
        field: json['field'] as String,
        limit: (json['limit'] as num?)?.toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        'field': field,
        if (limit != null) 'limit': limit,
      };
}

final class ResourceSearchSort implements _InttegroValue {
  final ResourceSearchSortField field;
  final ResourceSearchSortDirection direction;
  const ResourceSearchSort({required this.field, required this.direction});
  factory ResourceSearchSort.fromJson(Map<String, Object?> json) =>
      ResourceSearchSort(
        field: ResourceSearchSortField.fromJson(json['field']),
        direction: ResourceSearchSortDirection.fromJson(json['direction']),
      );
  @override
  Map<String, Object?> toJson() => {
        'field': field.toJson(),
        'direction': direction.toJson(),
      };
}

final class ResourceSearchRequest implements _InttegroValue {
  final String? text;
  final List<ResourceSearchFilter>? filters;
  final List<ResourceSearchFacet>? facets;
  final ResourceSearchSort? sort;
  final int? pageSize;
  final String? cursor;
  const ResourceSearchRequest({
    this.text,
    this.filters,
    this.facets,
    this.sort,
    this.pageSize,
    this.cursor,
  });
  @override
  Map<String, Object?> toJson() => {
        if (text != null) 'text': text,
        if (filters != null) 'filters': _encodeValue(filters),
        if (facets != null) 'facets': _encodeValue(facets),
        if (sort != null) 'sort': sort!.toJson(),
        if (pageSize != null) 'page_size': pageSize,
        if (cursor != null) 'cursor': cursor,
      };
}

final class ResourceSearchTotal {
  final int value;
  final ResourceSearchTotalRelation relation;
  const ResourceSearchTotal({required this.value, required this.relation});
  factory ResourceSearchTotal.fromJson(Map<String, Object?> json) =>
      ResourceSearchTotal(
        value: (json['value'] as num).toInt(),
        relation: ResourceSearchTotalRelation.fromJson(json['relation']),
      );
}

final class ResourceSearchResourceTotal {
  final ResourceSearchResourceType resourceType;
  final int value;
  final ResourceSearchTotalRelation relation;
  const ResourceSearchResourceTotal({
    required this.resourceType,
    required this.value,
    required this.relation,
  });
  factory ResourceSearchResourceTotal.fromJson(Map<String, Object?> json) =>
      ResourceSearchResourceTotal(
        resourceType: ResourceSearchResourceType.fromJson(
          json['resource_type'],
        ),
        value: (json['value'] as num).toInt(),
        relation: ResourceSearchTotalRelation.fromJson(json['relation']),
      );
}

final class ResourceSearchResourceReference {
  final ResourceSearchResourceType type;
  final String id;
  const ResourceSearchResourceReference({required this.type, required this.id});
  factory ResourceSearchResourceReference.fromJson(Map<String, Object?> json) =>
      ResourceSearchResourceReference(
        type: ResourceSearchResourceType.fromJson(json['type']),
        id: json['id'] as String,
      );
}

final class ResourceSearchResult {
  final ResourceSearchResourceReference resource;
  final String title;
  final String? summary;
  final String? status;
  final String? customerName;
  final Amount? amount;
  final Uri? url;
  final DateTime updatedAt;
  const ResourceSearchResult({
    required this.resource,
    required this.title,
    this.summary,
    this.status,
    this.customerName,
    this.amount,
    this.url,
    required this.updatedAt,
  });
  factory ResourceSearchResult.fromJson(Map<String, Object?> json) =>
      ResourceSearchResult(
        resource: ResourceSearchResourceReference.fromJson(
          (json['resource'] as Map).cast<String, Object?>(),
        ),
        title: json['title'] as String,
        summary: json['summary'] as String?,
        status: json['status'] as String?,
        customerName: json['customer_name'] as String?,
        amount: json['amount'] == null
            ? null
            : Amount.fromJson((json['amount'] as Map).cast<String, Object?>()),
        url: json['url'] == null ? null : Uri.parse(json['url'] as String),
        updatedAt: _decodeDateTime(json['updated_at']),
      );
}

final class ResourceSearchFacetBucket {
  final String value;
  final int count;
  const ResourceSearchFacetBucket({required this.value, required this.count});
  factory ResourceSearchFacetBucket.fromJson(Map<String, Object?> json) =>
      ResourceSearchFacetBucket(
        value: json['value'] as String,
        count: (json['count'] as num).toInt(),
      );
}

final class ResourceSearchFacetResult {
  final String field;
  final List<ResourceSearchFacetBucket> buckets;
  const ResourceSearchFacetResult({required this.field, required this.buckets});
  factory ResourceSearchFacetResult.fromJson(Map<String, Object?> json) =>
      ResourceSearchFacetResult(
        field: json['field'] as String,
        buckets: (json['buckets'] as List)
            .map(
              (value) => ResourceSearchFacetBucket.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
}

final class ResourceSearchResourceFreshness {
  final ResourceSearchResourceType resourceType;
  final ResourceSearchFreshnessState state;
  final DateTime? observedAt;
  final DateTime? lastIndexedAt;
  const ResourceSearchResourceFreshness({
    required this.resourceType,
    required this.state,
    this.observedAt,
    this.lastIndexedAt,
  });
  factory ResourceSearchResourceFreshness.fromJson(Map<String, Object?> json) =>
      ResourceSearchResourceFreshness(
        resourceType: ResourceSearchResourceType.fromJson(
          json['resource_type'],
        ),
        state: ResourceSearchFreshnessState.fromJson(json['state']),
        observedAt: json['observed_at'] == null
            ? null
            : _decodeDateTime(json['observed_at']),
        lastIndexedAt: json['last_indexed_at'] == null
            ? null
            : _decodeDateTime(json['last_indexed_at']),
      );
}

final class ResourceSearchFreshness {
  final ResourceSearchFreshnessState state;
  final DateTime? observedAt;
  final List<ResourceSearchResourceFreshness>? resources;
  const ResourceSearchFreshness({
    required this.state,
    this.observedAt,
    this.resources,
  });
  factory ResourceSearchFreshness.fromJson(Map<String, Object?> json) =>
      ResourceSearchFreshness(
        state: ResourceSearchFreshnessState.fromJson(json['state']),
        observedAt: json['observed_at'] == null
            ? null
            : _decodeDateTime(json['observed_at']),
        resources: (json['resources'] as List?)
            ?.map(
              (value) => ResourceSearchResourceFreshness.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
}

final class ResourceSearchPage {
  final List<ResourceSearchResourceType> resourceTypes;
  final ResourceSearchSort sort;
  final int pageSize;
  final int resultCount;
  final bool hasMore;
  final ResourceSearchTotal total;
  final List<ResourceSearchResourceTotal> resourceTotals;
  final List<ResourceSearchResult> results;
  final List<ResourceSearchFacetResult> facets;
  final String? nextCursor;
  final ResourceSearchFreshness freshness;
  const ResourceSearchPage({
    required this.resourceTypes,
    required this.sort,
    required this.pageSize,
    required this.resultCount,
    required this.hasMore,
    required this.total,
    required this.resourceTotals,
    required this.results,
    required this.facets,
    this.nextCursor,
    required this.freshness,
  });
  factory ResourceSearchPage.fromJson(Map<String, Object?> json) =>
      ResourceSearchPage(
        resourceTypes: (json['resource_types'] as List)
            .map(ResourceSearchResourceType.fromJson)
            .toList(),
        sort: ResourceSearchSort.fromJson(
          (json['sort'] as Map).cast<String, Object?>(),
        ),
        pageSize: (json['page_size'] as num).toInt(),
        resultCount: (json['result_count'] as num).toInt(),
        hasMore: json['has_more'] as bool,
        total: ResourceSearchTotal.fromJson(
          (json['total'] as Map).cast<String, Object?>(),
        ),
        resourceTotals: (json['resource_totals'] as List)
            .map(
              (value) => ResourceSearchResourceTotal.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        results: (json['results'] as List)
            .map(
              (value) => ResourceSearchResult.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        facets: (json['facets'] as List)
            .map(
              (value) => ResourceSearchFacetResult.fromJson(
                (value as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
        nextCursor: json['next_cursor'] as String?,
        freshness: ResourceSearchFreshness.fromJson(
          (json['freshness'] as Map).cast<String, Object?>(),
        ),
      );
}
