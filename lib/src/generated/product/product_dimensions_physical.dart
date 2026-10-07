part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class ProductDimensionsPhysical implements _InttegroValue {
  final String? weightUnit;
  final double? weight;
  final double? size;
  final String? volumeUnit;
  final double? volume;
  final double? length;
  final double? height;
  final double? width;
  const ProductDimensionsPhysical({
    this.weightUnit,
    this.weight,
    this.size,
    this.volumeUnit,
    this.volume,
    this.length,
    this.height,
    this.width,
  });
  factory ProductDimensionsPhysical.fromJson(
    Map<String, Object?> json,
  ) =>
      ProductDimensionsPhysical(
        weightUnit:
            json["weight_unit"] == null ? null : json["weight_unit"] as String,
        weight:
            json["weight"] == null ? null : (json["weight"] as num).toDouble(),
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        volumeUnit:
            json["volume_unit"] == null ? null : json["volume_unit"] as String,
        volume:
            json["volume"] == null ? null : (json["volume"] as num).toDouble(),
        length:
            json["length"] == null ? null : (json["length"] as num).toDouble(),
        height:
            json["height"] == null ? null : (json["height"] as num).toDouble(),
        width: json["width"] == null ? null : (json["width"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (weightUnit != null) "weight_unit": _encodeValue(weightUnit),
        if (weight != null) "weight": _encodeValue(weight),
        if (size != null) "size": _encodeValue(size),
        if (volumeUnit != null) "volume_unit": _encodeValue(volumeUnit),
        if (volume != null) "volume": _encodeValue(volume),
        if (length != null) "length": _encodeValue(length),
        if (height != null) "height": _encodeValue(height),
        if (width != null) "width": _encodeValue(width),
      };
}
