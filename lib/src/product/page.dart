part of '../../product.dart';

/// A page of products returned by a list operation.
///
/// Exposes [number], [size], and [products].
final class Page implements InttegroValue {
  final int number;
  final int size;
  final List<Product> products;
  const Page({
    required this.number,
    required this.size,
    required this.products,
  });
  factory Page.fromJson(Map<String, Object?> json) => Page(
        number: (json["number"] as num).toInt(),
        size: (json["size"] as num).toInt(),
        products: (json["products"] as List)
            .map(
              (item) => Product.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "number": encodeValue(number),
        "size": encodeValue(size),
        "products": encodeValue(products),
      };
}
