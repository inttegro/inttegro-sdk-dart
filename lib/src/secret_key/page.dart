part of '../../secret_key.dart';

/// A page of secret keys returned by a list operation.
///
/// Exposes [number], [size], [count], and [total], among other contract
/// fields.
final class Page implements InttegroValue {
  final int number;
  final int size;
  final int count;
  final int total;
  final bool hasMore;
  final List<SecretKey> keys;
  const Page({
    required this.number,
    required this.size,
    required this.count,
    required this.total,
    required this.hasMore,
    required this.keys,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
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
        "number": encodeValue(number),
        "size": encodeValue(size),
        "count": encodeValue(count),
        "total": encodeValue(total),
        "has_more": encodeValue(hasMore),
        "keys": encodeValue(keys),
      };
}
