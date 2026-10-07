part of '../../../inttegro.dart';

sealed class OrderLineItem implements _InttegroValue {
  const OrderLineItem();
  factory OrderLineItem.fromJson(Object? json) {
    try {
      return OrderLineItemOrderProductLineItem(
        OrderProductLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderFeeLineItem(
        OrderFeeLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderShippingLineItem(
        OrderShippingLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    try {
      return OrderLineItemOrderDiscountLineItem(
        OrderDiscountLineItem.fromJson((json as Map).cast<String, Object?>()),
      );
    } catch (_) {}
    throw FormatException('Unsupported OrderLineItem value');
  }
}
