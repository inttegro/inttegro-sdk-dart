part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class ShippingLineItemInput implements _InttegroValue {
  final LineItemType type;
  final ShippingDetailsInput shipping;
  const ShippingLineItemInput({required this.type, required this.shipping});
  factory ShippingLineItemInput.fromJson(Map<String, Object?> json) =>
      ShippingLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        shipping: ShippingDetailsInput.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": _encodeValue(type),
        "shipping": _encodeValue(shipping),
      };
}
