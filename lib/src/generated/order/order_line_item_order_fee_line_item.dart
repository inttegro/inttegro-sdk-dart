part of '../../../inttegro.dart';

final class OrderLineItemOrderFeeLineItem extends OrderLineItem {
  final OrderFeeLineItem value;
  const OrderLineItemOrderFeeLineItem(this.value);
  @override
  Object? toJson() => _encodeValue(value);
}
