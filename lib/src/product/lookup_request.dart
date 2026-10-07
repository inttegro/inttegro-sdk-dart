part of '../../product.dart';

/// Identifies the product to retrieve.
///
/// Carries [productId].
final class LookupRequest implements InttegroValue {
  final String productId;
  const LookupRequest({required this.productId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": encodeValue(productId)};
}
