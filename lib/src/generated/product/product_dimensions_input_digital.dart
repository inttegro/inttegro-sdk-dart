part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductDimensionsInputDigital implements _InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const ProductDimensionsInputDigital({this.bytes, this.sizeUnit, this.size});
  factory ProductDimensionsInputDigital.fromJson(Map<String, Object?> json) =>
      ProductDimensionsInputDigital(
        bytes: json["bytes"] == null ? null : (json["bytes"] as num).toDouble(),
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (bytes != null) "bytes": _encodeValue(bytes),
        if (sizeUnit != null) "size_unit": _encodeValue(sizeUnit),
        if (size != null) "size": _encodeValue(size),
      };
}
