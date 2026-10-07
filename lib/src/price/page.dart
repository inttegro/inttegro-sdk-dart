part of '../../price.dart';

/// A page of prices returned by a list operation.
///
/// Exposes [number], [size], and [prices].
final class Page implements InttegroValue {
  final int? number;
  final int? size;
  final List<Catalog>? prices;
  const Page({this.number, this.size, this.prices});
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: json["number"] == null ? null : (json["number"] as num).toInt(),
        size: json["size"] == null ? null : (json["size"] as num).toInt(),
        prices: json["prices"] == null
            ? null
            : (json["prices"] as List)
                .map(
                  (item) => Catalog.fromJson(
                    (item as Map).cast<String, Object?>(),
                  ),
                )
                .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (number != null) "number": encodeValue(number),
        if (size != null) "size": encodeValue(size),
        if (prices != null) "prices": encodeValue(prices),
      };
}
