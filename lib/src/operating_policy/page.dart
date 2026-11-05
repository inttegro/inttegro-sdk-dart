part of '../../operating_policy.dart';

/// A page of immutable operating-policy versions, newest first.
final class Page implements InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<OperatingPolicy> versions;

  const Page({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.versions,
  });

  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json['number'] as num).toInt(),
        size: (json['size'] as num).toInt(),
        count: (json['count'] as num).toInt(),
        total: (json['total'] as num).toInt(),
        hasMore: json['has_more'] as bool,
        versions: (json['versions'] as List)
            .map((item) => OperatingPolicy.fromJson(
                  (item as Map).cast<String, Object?>(),
                ))
            .toList(),
      );

  @override
  Map<String, Object?> toJson() => {
        'number': number,
        'size': size,
        'count': count,
        'total': total,
        'has_more': hasMore,
        'versions': encodeValue(versions),
      };
}
