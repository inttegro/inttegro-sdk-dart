part of '../../product.dart';

/// Parameters for adding a price to a product.
///
/// Carries [label], [about], [productId], and [amount].
final class AddPriceRequest implements InttegroValue {
  final String? label;
  final String? about;
  final String productId;
  final inttegro_money.AmountParams amount;
  const AddPriceRequest({
    this.label,
    this.about,
    required this.productId,
    required this.amount,
  });
  factory AddPriceRequest.fromJson(Map<String, Object?> json) =>
      AddPriceRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        productId: json["product_id"] as String,
        amount: inttegro_money.AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": encodeValue(label),
        if (about != null) "about": encodeValue(about),
        "product_id": encodeValue(productId),
        "amount": encodeValue(amount),
      };
}
