part of '../../purchase_intent.dart';

/// The permitted purchase quantity range.
///
/// Exposes [min] and [max].
final class Quantity implements InttegroValue {
  final int min;
  final int? max;
  const Quantity({required this.min, this.max});
  factory Quantity.fromJson(Map<String, Object?> json) => Quantity(
        min: (json["min"] as num).toInt(),
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        "min": encodeValue(min),
        if (max != null) "max": encodeValue(max),
      };
}
