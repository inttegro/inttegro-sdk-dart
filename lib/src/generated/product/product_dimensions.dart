part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductDimensions implements _InttegroValue {
  final ProductDimensionsPhysical? physical;
  final ProductDimensionsDigital? digital;
  final ProductDimensionsCustom? custom;
  const ProductDimensions({this.physical, this.digital, this.custom});
  factory ProductDimensions.fromJson(Map<String, Object?> json) =>
      ProductDimensions(
        physical: json["physical"] == null
            ? null
            : ProductDimensionsPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : ProductDimensionsDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : ProductDimensionsCustom.fromJson(
                (json["custom"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (physical != null) "physical": _encodeValue(physical),
        if (digital != null) "digital": _encodeValue(digital),
        if (custom != null) "custom": _encodeValue(custom),
      };
}
