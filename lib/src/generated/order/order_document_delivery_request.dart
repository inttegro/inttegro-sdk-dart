part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class OrderDocumentDeliveryRequest implements _InttegroValue {
  final String orderId;
  const OrderDocumentDeliveryRequest({required this.orderId});
  factory OrderDocumentDeliveryRequest.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}
