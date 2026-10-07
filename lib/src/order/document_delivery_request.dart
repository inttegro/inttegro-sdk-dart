part of '../../order.dart';

/// Identifies the order whose document should be delivered.
///
/// Carries [orderId].
final class DocumentDeliveryRequest implements InttegroValue {
  final String orderId;
  const DocumentDeliveryRequest({required this.orderId});
  factory DocumentDeliveryRequest.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": encodeValue(orderId)};
}
