part of '../../order.dart';

/// Shipping line item fields accepted by the order API.
///
/// Carries [type] and [shipping].
final class ShippingLineItemInput implements InttegroValue {
  final LineItemType type;
  final inttegro_checkout.ShippingDetailsInput shipping;
  const ShippingLineItemInput({required this.type, required this.shipping});
  factory ShippingLineItemInput.fromJson(Map<String, Object?> json) =>
      ShippingLineItemInput(
        type: LineItemType.fromJson(json["type"]),
        shipping: inttegro_checkout.ShippingDetailsInput.fromJson(
          (json["shipping"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "type": encodeValue(type),
        "shipping": encodeValue(shipping),
      };
}
