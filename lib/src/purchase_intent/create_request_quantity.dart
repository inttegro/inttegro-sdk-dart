part of '../../purchase_intent.dart';

/// Minimum and maximum quantity for a new purchase intent.
final class CreateRequestQuantity implements InttegroValue {
  final int? max;
  final int min;
  const CreateRequestQuantity({this.max, required this.min});
  factory CreateRequestQuantity.fromJson(
    Map<String, Object?> json,
  ) =>
      CreateRequestQuantity(
        max: json["max"] == null ? null : (json["max"] as num).toInt(),
        min: (json["min"] as num).toInt(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (max != null) "max": encodeValue(max),
        "min": encodeValue(min),
      };
}
