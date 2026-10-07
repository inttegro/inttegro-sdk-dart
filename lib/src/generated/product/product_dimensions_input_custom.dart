part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductDimensionsInputCustom implements _InttegroValue {
  final String? sizeUnit;
  final double? size;
  final ProductDimensionDetails? details;
  const ProductDimensionsInputCustom({this.sizeUnit, this.size, this.details});
  factory ProductDimensionsInputCustom.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInputCustom(
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        details: json["details"] == null
            ? null
            : ProductDimensionDetails.fromJson(json["details"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
        if (details != null) "details": _encodeValue(details),
      };
}
