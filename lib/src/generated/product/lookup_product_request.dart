part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupProductRequest implements _InttegroValue {
  final String productId;
  const LookupProductRequest({required this.productId});
  factory LookupProductRequest.fromJson(Map<String, Object?> json) =>
      LookupProductRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": _encodeValue(productId)};
}
