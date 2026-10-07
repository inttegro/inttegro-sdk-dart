part of '../../product.dart';

/// Parameters for dimensions input digital in the product API.
///
/// Carries [bytes], [sizeUnit], and [size].
final class DimensionsInputDigital implements InttegroValue {
  final double? bytes;
  final String? sizeUnit;
  final double? size;
  const DimensionsInputDigital({this.bytes, this.sizeUnit, this.size});
  factory DimensionsInputDigital.fromJson(Map<String, Object?> json) =>
      DimensionsInputDigital(
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
