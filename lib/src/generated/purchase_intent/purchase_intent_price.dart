part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentPrice implements _InttegroValue {
  final bool active;
  final String? id;
  final String? label;
  final Amount nominal;
  final PurchaseIntentOriginalPrice? original;
  const PurchaseIntentPrice({
    required this.active,
    this.id,
    this.label,
    required this.nominal,
    this.original,
  });
  factory PurchaseIntentPrice.fromJson(Map<String, Object?> json) =>
      PurchaseIntentPrice(
        active: json["active"] as bool,
        id: json["id"] == null ? null : json["id"] as String,
        label: json["label"] == null ? null : json["label"] as String,
        nominal: Amount.fromJson(
          (json["nominal"] as Map).cast<String, Object?>(),
        ),
        original: json["original"] == null
            ? null
            : PurchaseIntentOriginalPrice.fromJson(
                (json["original"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "active": _encodeValue(active),
        if (id != null) "id": _encodeValue(id),
        if (label != null) "label": _encodeValue(label),
        "nominal": _encodeValue(nominal),
        if (original != null) "original": _encodeValue(original),
      };
}
