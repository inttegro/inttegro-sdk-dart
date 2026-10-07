part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryResult implements _InttegroValue {
  final OrderDocumentDelivery? delivery;
  final Error? error;
  final Order? order;
  const OrderDocumentDeliveryResult({this.delivery, this.error, this.order});
  factory OrderDocumentDeliveryResult.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryResult(
        delivery: json["delivery"] == null
            ? null
            : OrderDocumentDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        error: json["error"] == null
            ? null
            : Error.fromJson((json["error"] as Map).cast<String, Object?>()),
        order: json["order"] == null
            ? null
            : Order.fromJson((json["order"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": _encodeValue(delivery),
        if (error != null) "error": _encodeValue(error),
        if (order != null) "order": _encodeValue(order),
      };
}
