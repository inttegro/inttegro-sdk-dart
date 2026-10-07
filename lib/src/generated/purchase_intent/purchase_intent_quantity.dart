part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PurchaseIntentQuantity implements _InttegroValue {
  final int min;
  final int? max;
  const PurchaseIntentQuantity({required this.min, this.max});
  factory PurchaseIntentQuantity.fromJson(Map<String, Object?> json) =>
      PurchaseIntentQuantity(
        min: (json["min"] as num).toInt(),
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "min": _encodeValue(min),
        if (max != null) "max": _encodeValue(max),
      };
}
