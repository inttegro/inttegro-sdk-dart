part of '../../../inttegro.dart';

final class OrderLineItemOrderDiscountLineItem extends OrderLineItem {
  final OrderDiscountLineItem value;
  const OrderLineItemOrderDiscountLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
