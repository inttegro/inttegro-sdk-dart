part of '../../purchase_intent.dart';

/// Replacement quantity bounds for a purchase intent.
final class UpdateRequestQuantity implements InttegroValue {
  final int? max;
  final int min;
  const UpdateRequestQuantity({this.max, required this.min});
  factory UpdateRequestQuantity.fromJson(
    Map<String, Object?> json,
  ) =>
      UpdateRequestQuantity(
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
        min: (json["min"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (max != null) "max": encodeValue(max),
        "min": encodeValue(min),
      };
}
