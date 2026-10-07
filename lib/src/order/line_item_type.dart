part of '../../order.dart';

/// The commercial role of an order line item.
final class LineItemType implements InttegroValue {
  final String value;
  const LineItemType(this.value);
  factory LineItemType.fromJson(Object? json) => LineItemType(json as String);
  static const product = LineItemType("product");
  static const fee = LineItemType("fee");
  static const shipping = LineItemType("shipping");
  @override
  String toJson() => value;
  @override
  bool operator ==(Object other) =>
      other is LineItemType && other.value == value;
  @override
  int get hashCode => value.hashCode;
  @override
  String toString() => value;
}
