part of '../../../inttegro.dart';

/// A typed `ProductShipmentInputType` value used by the Inttegro API.
final class ProductShipmentInputType implements _InttegroValue {
  final String value;
  const ProductShipmentInputType(this.value);
  factory ProductShipmentInputType.fromJson(Object? json) =>
      ProductShipmentInputType(json as String);
  static const delivery = ProductShipmentInputType("delivery");
  static const download = ProductShipmentInputType("download");
  static const render = ProductShipmentInputType("render");
  static const stream = ProductShipmentInputType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductShipmentInputType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
