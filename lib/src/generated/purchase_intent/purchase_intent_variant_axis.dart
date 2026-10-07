part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentVariantAxis implements _InttegroValue {
  final String key;
  final String label;
  final int position;
  const PurchaseIntentVariantAxis({
    required this.key,
    required this.label,
    required this.position,
  });
  factory PurchaseIntentVariantAxis.fromJson(Map<String, Object?> json) =>
      PurchaseIntentVariantAxis(
        key: json["key"] as String,
        label: json["label"] as String,
        position: (json["position"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "key": _encodeValue(key),
        "label": _encodeValue(label),
        "position": _encodeValue(position),
      };
}
