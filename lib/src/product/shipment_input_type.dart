part of '../../product.dart';

/// The fulfillment input supplied when creating or updating a product.
final class ShipmentInputType implements InttegroValue {
  final String value;
  const ShipmentInputType(this.value);
  factory ShipmentInputType.fromJson(Object? json) =>
      ShipmentInputType(json as String);
  static const delivery = ShipmentInputType("delivery");
  static const download = ShipmentInputType("download");
  static const render = ShipmentInputType("render");
  static const stream = ShipmentInputType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ShipmentInputType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
