part of '../../product.dart';

/// How a product is delivered or fulfilled.
final class ShipmentType implements InttegroValue {
  final String value;
  const ShipmentType(this.value);
  factory ShipmentType.fromJson(Object? json) => ShipmentType(json as String);
  static const delivery = ShipmentType("delivery");
  static const download = ShipmentType("download");
  static const render = ShipmentType("render");
  static const service = ShipmentType("service");
  static const stream = ShipmentType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ShipmentType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
