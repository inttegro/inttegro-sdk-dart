part of '../../secret_key.dart';

/// A page of secret-key authentication records.
final class UsagePage implements InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<UsageRow> rows;
  const UsagePage({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.rows,
  });
  factory UsagePage.fromJson(Map<String, Object?> json) => UsagePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        count: (json["count"] as num).toInt(),
        total: (json["total"] as num).toInt(),
        hasMore: json["has_more"] as bool,
        rows: (json["rows"] as List)
            .map(
              (item) => UsageRow.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "count": encodeValue(count),
        "total": encodeValue(total),
        "has_more": encodeValue(hasMore),
        "rows": encodeValue(rows),
      };
}
