part of '../../order.dart';

/// The result of requesting delivery of an order document.
///
/// Exposes [delivery], [error], and [order].
final class DocumentDeliveryResult implements InttegroValue {
  final DocumentDelivery? delivery;
  final inttegro_shared.Error? error;
  final Order? order;
  const DocumentDeliveryResult({this.delivery, this.error, this.order});
  factory DocumentDeliveryResult.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryResult(
        delivery: json["delivery"] == null
            ? null
            : DocumentDelivery.fromJson(
                (json["delivery"] as Map).cast<String, Object?>(),
              ),
        error: json["error"] == null
            ? null
            : inttegro_shared.Error.fromJson(
                (json["error"] as Map).cast<String, Object?>()),
        order: json["order"] == null
            ? null
            : Order.fromJson((json["order"] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() => {
        if (delivery != null) "delivery": encodeValue(delivery),
        if (error != null) "error": encodeValue(error),
        if (order != null) "order": encodeValue(order),
      };
}
