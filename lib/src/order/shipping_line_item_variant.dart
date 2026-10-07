part of '../../order.dart';

final class ShippingLineItemVariant extends LineItem {
  final ShippingLineItem value;
  const ShippingLineItemVariant(this.value);
  @override
  Object? toJson() => encodeValue(value);
}
