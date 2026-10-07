part of '../../product.dart';

/// Byte size and display size for a digital product.
final class DimensionsDigital implements InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const DimensionsDigital({this.bytes, this.sizeUnit, this.size});
  factory DimensionsDigital.fromJson(Map<String, Object?> json) =>
      DimensionsDigital(
        bytes: json["bytes"] == null ? null : (json["bytes"] as num).toDouble(),
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
      );
  @override
  Map<String, Object?> toJson() => {
        if (bytes != null) "bytes": encodeValue(bytes),
        if (sizeUnit != null) "size_unit": encodeValue(sizeUnit),
        if (size != null) "size": encodeValue(size),
      };
}
