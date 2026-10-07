part of '../../../inttegro.dart';

final class OrderLineItemOrderShippingLineItem extends OrderLineItem {
  final OrderShippingLineItem value;
  const OrderLineItemOrderShippingLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
