part of '../../../inttegro.dart';

/// Immutable order-line snapshot attached to a refund.
sealed class RefundOrderLineItem implements _InttegroValue {
  const RefundOrderLineItem();

  factory RefundOrderLineItem.fromJson(Object? json) {
    final value = (json as Map).cast<String, Object?>();
    return switch (value["type"]) {
      "product" => RefundOrderProductLineItem.fromJson(value),
      "fee" => RefundOrderFeeLineItem.fromJson(value),
      "shipping" => RefundOrderShippingLineItem.fromJson(value),
      _ =>
        throw const FormatException("Unsupported refund order line item type"),
    };
  }

  String get id;
  String get type;
}
