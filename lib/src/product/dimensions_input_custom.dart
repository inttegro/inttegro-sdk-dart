part of '../../product.dart';

/// Parameters for dimensions input custom in the product API.
///
/// Carries [sizeUnit], [size], and [details].
final class DimensionsInputCustom implements InttegroValue {
  final String? sizeUnit;
  final double? size;
  final core.ProductDimensionDetails? details;
  const DimensionsInputCustom({this.sizeUnit, this.size, this.details});
  factory DimensionsInputCustom.fromJson(Map<String, Object?> json) =>
      DimensionsInputCustom(
        sizeUnit:
            json["size_unit"] == null ? null : json["size_unit"] as String,
        size: json["size"] == null ? null : (json["size"] as num).toDouble(),
        details: json["details"] == null
            ? null
            : core.ProductDimensionDetails.fromJson(json["details"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (sizeUnit != null) "size_unit": encodeValue(sizeUnit),
        if (size != null) "size": encodeValue(size),
        if (details != null) "details": encodeValue(details),
      };
}
