part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ProductShipmentInput implements _InttegroValue {
  final ProductShipmentInputType type;
  const ProductShipmentInput({required this.type});
  factory ProductShipmentInput.fromJson(Map<String, Object?> json) =>
      ProductShipmentInput(
        type: ProductShipmentInputType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {"type": _encodeValue(type)};
}
