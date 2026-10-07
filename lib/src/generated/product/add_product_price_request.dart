part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class AddProductPriceRequest implements _InttegroValue {
  final String? label;
  final String? about;
  final String productId;
  final AmountParams amount;
  const AddProductPriceRequest({
    this.label,
    this.about,
    required this.productId,
    required this.amount,
  });
  factory AddProductPriceRequest.fromJson(Map<String, Object?> json) =>
      AddProductPriceRequest(
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        productId: json["product_id"] as String,
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "product_id": _encodeValue(productId),
        "amount": _encodeValue(amount),
      };
}
