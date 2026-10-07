part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class CatalogPriceParams implements _InttegroValue {
  final String? productId;
  final String? label;
  final String? about;
  final AmountParams amount;
  const CatalogPriceParams({
    this.productId,
    this.label,
    this.about,
    required this.amount,
  });
  factory CatalogPriceParams.fromJson(Map<String, Object?> json) =>
      CatalogPriceParams(
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        amount: AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (productId != null) "product_id": _encodeValue(productId),
        if (label != null) "label": _encodeValue(label),
        if (about != null) "about": _encodeValue(about),
        "amount": _encodeValue(amount),
      };
}
