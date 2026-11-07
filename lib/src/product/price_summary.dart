part of '../../product.dart';

/// A concise catalog-price record attached to a product.
final class PriceSummary implements InttegroValue {
  final String id;
  final bool active;
  final String? label;
  final inttegro_money.Amount fixedAmount;
  const PriceSummary({
    required this.id,
    required this.active,
    this.label,
    required this.fixedAmount,
  });
  factory PriceSummary.fromJson(Map<String, Object?> json) => PriceSummary(
        id: json["id"] as String,
        active: json["active"] as bool,
        label: json["label"] == null ? null : json["label"] as String,
        fixedAmount: inttegro_money.Amount.fromJson(
          (json["fixed_amount"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "active": encodeValue(active),
        if (label != null) "label": encodeValue(label),
        "fixed_amount": encodeValue(fixedAmount),
      };
}
