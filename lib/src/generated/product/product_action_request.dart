part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductActionRequest implements _InttegroValue {
  final String productId;
  const ProductActionRequest({required this.productId});
  factory ProductActionRequest.fromJson(Map<String, Object?> json) =>
      ProductActionRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": _encodeValue(productId)};
}
