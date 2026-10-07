part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PricePage implements _InttegroValue {
  final int? number;
  final int? size;
  final List<CatalogPrice>? prices;
  const PricePage({this.number, this.size, this.prices});
  factory PricePage.fromJson(Map<String, Object?> json) => PricePage(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => CatalogPrice.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": _encodeValue(number),
        if (size != null) "size": _encodeValue(size),
        if (prices != null) "prices": _encodeValue(prices),
      };
}
