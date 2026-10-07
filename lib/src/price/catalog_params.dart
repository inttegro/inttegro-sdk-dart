part of '../../price.dart';

/// Product and amount fields supplied when creating a catalog price.
///
/// Carries [productId], [label], [about], and [amount].
final class CatalogParams implements InttegroValue {
  final String? productId;
  final String? label;
  final String? about;
  final inttegro_money.AmountParams amount;
  const CatalogParams({
    this.productId,
    this.label,
    this.about,
    required this.amount,
  });
  factory CatalogParams.fromJson(Map<String, Object?> json) => CatalogParams(
        productId:
            json["product_id"] == null ? null : json["product_id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        about: json["about"] == null ? null : json["about"] as String,
        amount: inttegro_money.AmountParams.fromJson(
          (json["amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (productId != null) "product_id": encodeValue(productId),
        if (label != null) "label": encodeValue(label),
        if (about != null) "about": encodeValue(about),
        "amount": encodeValue(amount),
      };
}
