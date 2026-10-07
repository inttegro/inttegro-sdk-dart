part of '../../order.dart';

/// Identifies the order that needs a new payment confirmation.
///
/// Carries [orderId].
final class RequestConfirmationRequest implements InttegroValue {
  final String orderId;
  const RequestConfirmationRequest({required this.orderId});
  factory RequestConfirmationRequest.fromJson(Map<String, Object?> json) =>
      RequestConfirmationRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": encodeValue(orderId)};
}
