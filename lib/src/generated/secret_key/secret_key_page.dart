part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class SecretKeyPage implements _InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<SecretKey> keys;
  const SecretKeyPage({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.keys,
  });
  factory SecretKeyPage.fromJson(Map<String, Object?> json) => SecretKeyPage(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        count: (json["count"] as num).toInt(),
        total: (json["total"] as num).toInt(),
        hasMore: json["has_more"] as bool,
        keys: (json["keys"] as List)
            .map(
              (item) =>
                  SecretKey.fromJson((item as Map).cast<String, Object?>()),
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
        "keys": _encodeValue(keys),
      };
}
