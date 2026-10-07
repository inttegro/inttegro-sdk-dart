part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductPriceSummary implements _InttegroValue {
  final String id;
  final bool active;
  final String? label;
  final Amount nominal;
  const ProductPriceSummary({
    required this.id,
    required this.active,
    this.label,
    required this.nominal,
  });
  factory ProductPriceSummary.fromJson(Map<String, Object?> json) =>
      ProductPriceSummary(
        id: json["id"] as String,
        active: json["active"] as bool,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "active": _encodeValue(active),
        if (label != null) "label": _encodeValue(label),
        "nominal": _encodeValue(nominal),
      };
}
