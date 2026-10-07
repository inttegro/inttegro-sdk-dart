part of '../../product.dart';

/// Identifies the product targeted by an action.
///
/// Carries [productId].
final class ActionRequest implements InttegroValue {
  final String productId;
  const ActionRequest({required this.productId});
  factory ActionRequest.fromJson(Map<String, Object?> json) =>
      ActionRequest(productId: json["product_id"] as String);
  @override
  Map<String, Object?> toJson() => {"product_id": encodeValue(productId)};
}
