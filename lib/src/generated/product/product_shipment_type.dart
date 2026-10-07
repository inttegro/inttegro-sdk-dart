part of '../../../inttegro.dart';

/// A typed `ProductShipmentType` value used by the Inttegro API.
final class ProductShipmentType implements _InttegroValue {
  final String value;
  const ProductShipmentType(this.value);
  factory ProductShipmentType.fromJson(Object? json) =>
      ProductShipmentType(json as String);
  static const delivery = ProductShipmentType("delivery");
  static const download = ProductShipmentType("download");
  static const render = ProductShipmentType("render");
  static const service = ProductShipmentType("service");
  static const stream = ProductShipmentType("stream");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductShipmentType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
