part of '../../product.dart';

/// The physical, digital, or custom dimensions of a product.
///
/// Exposes [physical], [digital], and [custom].
final class Dimensions implements InttegroValue {
  final DimensionsPhysical? physical;
  final DimensionsDigital? digital;
  final DimensionsCustom? custom;
  const Dimensions({this.physical, this.digital, this.custom});
  factory Dimensions.fromJson(Map<String, Object?> json) => Dimensions(
        physical: json["physical"] == null
            ? null
            : DimensionsPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : DimensionsDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : DimensionsCustom.fromJson(
                (json["custom"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (physical != null) "physical": encodeValue(physical),
        if (digital != null) "digital": encodeValue(digital),
        if (custom != null) "custom": encodeValue(custom),
      };
}
