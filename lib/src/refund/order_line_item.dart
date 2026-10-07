part of '../../refund.dart';

/// Immutable order-line snapshot attached to a refund.
sealed class OrderLineItem implements InttegroValue {
  const OrderLineItem();

  factory OrderLineItem.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "product" => OrderProductLineItem.fromJson(value),
      "fee" => OrderFeeLineItem.fromJson(value),
      "shipping" => OrderShippingLineItem.fromJson(value),
      _ =>
        throw const FormatException("Unsupported refund order line item type"),
    };
  }

  String get id;
  String get type;
}
