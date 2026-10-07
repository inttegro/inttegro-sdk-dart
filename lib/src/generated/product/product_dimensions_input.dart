part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductDimensionsInput implements _InttegroValue {
  final ProductDimensionsInputPhysical? physical;
  final ProductDimensionsInputDigital? digital;
  final ProductDimensionsInputCustom? custom;
  const ProductDimensionsInput({this.physical, this.digital, this.custom});
  factory ProductDimensionsInput.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInput(
        physical: json["physical"] == null
            ? null
            : ProductDimensionsInputPhysical.fromJson(
                (json["physical"] as Map).cast<String, Object?>(),
              ),
        digital: json["digital"] == null
            ? null
            : ProductDimensionsInputDigital.fromJson(
                (json["digital"] as Map).cast<String, Object?>(),
              ),
        custom: json["custom"] == null
            ? null
            : ProductDimensionsInputCustom.fromJson(
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
