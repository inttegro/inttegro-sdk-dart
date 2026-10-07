part of '../../product.dart';

/// Parameters for dimensions input physical in the product API.
///
/// Carries [weightUnit], [weight], [size], and [volumeUnit], among other
/// supported fields.
final class DimensionsInputPhysical implements InttegroValue {
  final String? weightUnit;
  final double? weight;
  final double? size;
  final String? volumeUnit;
  final double? volume;
  final double? length;
  final double? height;
  final double? width;
  const DimensionsInputPhysical({
    this.weightUnit,
    this.weight,
    this.size,
    this.volumeUnit,
    this.volume,
    this.length,
    this.height,
    this.width,
  });
  factory DimensionsInputPhysical.fromJson(
    Map<String, Object?> json,
  ) =>
      DimensionsInputPhysical(
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
        if (weightUnit != null) "weight_unit": encodeValue(weightUnit),
        if (weight != null) "weight": encodeValue(weight),
        if (size != null) "size": encodeValue(size),
        if (volumeUnit != null) "volume_unit": encodeValue(volumeUnit),
        if (volume != null) "volume": encodeValue(volume),
        if (length != null) "length": encodeValue(length),
        if (height != null) "height": encodeValue(height),
        if (width != null) "width": encodeValue(width),
      };
}
