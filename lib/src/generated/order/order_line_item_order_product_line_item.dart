part of '../../../inttegro.dart';

final class OrderLineItemOrderProductLineItem extends OrderLineItem {
  final OrderProductLineItem value;
  const OrderLineItemOrderProductLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
