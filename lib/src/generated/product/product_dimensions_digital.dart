part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductDimensionsDigital implements _InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const ProductDimensionsDigital({this.bytes, this.sizeUnit, this.size});
  factory ProductDimensionsDigital.fromJson(Map<String, Object?> json) =>
      ProductDimensionsDigital(
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
