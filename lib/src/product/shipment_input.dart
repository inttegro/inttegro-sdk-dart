part of '../../product.dart';

/// Selects the fulfillment type supplied for a product.
///
/// Carries [type].
final class ShipmentInput implements InttegroValue {
  final ShipmentInputType type;
  const ShipmentInput({required this.type});
  factory ShipmentInput.fromJson(Map<String, Object?> json) => ShipmentInput(
        type: ShipmentInputType.fromJson(json["type"]),
      );
  @override
  Map<String, Object?> toJson() => {"type": encodeValue(type)};
}
