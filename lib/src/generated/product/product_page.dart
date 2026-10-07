part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductPage implements _InttegroValue {
  final int number;
  final int size;
  final List<Product> products;
  const ProductPage({
    required this.number,
    required this.size,
    required this.products,
  });
  factory ProductPage.fromJson(Map<String, Object?> json) => ProductPage(
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
        "number": _encodeValue(number),
        "size": _encodeValue(size),
        "products": _encodeValue(products),
      };
}
