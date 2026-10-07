part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class UpdatePurchaseIntentRequestQuantity implements _InttegroValue {
  final int? max;
  final int min;
  const UpdatePurchaseIntentRequestQuantity({this.max, required this.min});
  factory UpdatePurchaseIntentRequestQuantity.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdatePurchaseIntentRequestQuantity(
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
        min: (json["min"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (max != null) "max": _encodeValue(max),
        "min": _encodeValue(min),
      };
}
