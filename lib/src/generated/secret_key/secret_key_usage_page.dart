part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class SecretKeyUsagePage implements _InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<SecretKeyUsageRow> rows;
  const SecretKeyUsagePage({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.rows,
  });
  factory SecretKeyUsagePage.fromJson(Map<String, Object?> json) =>
      SecretKeyUsagePage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        count: (json["count"] as num).toInt(),
        total: (json["total"] as num).toInt(),
        hasMore: json["has_more"] as bool,
        rows: (json["rows"] as List)
            .map(
              (item) => SecretKeyUsageRow.fromJson(
                (item as Map).cast<String, Object?>(),
              ),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "count": _encodeValue(count),
        "total": _encodeValue(total),
        "has_more": _encodeValue(hasMore),
        "rows": _encodeValue(rows),
      };
}
