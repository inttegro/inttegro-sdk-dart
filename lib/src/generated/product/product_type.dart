part of '../../../inttegro.dart';

/// A typed `ProductType` value used by the Inttegro API.
final class ProductType implements _InttegroValue {
  final String value;
  const ProductType(this.value);
  factory ProductType.fromJson(Object? json) => ProductType(json as String);
  static const physical = ProductType("physical");
  static const digital = ProductType("digital");
  static const service = ProductType("service");
  static const voucher = ProductType("voucher");
  static const custom = ProductType("custom");
  static const cause = ProductType("cause");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is ProductType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
