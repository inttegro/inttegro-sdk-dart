part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class RequestConfirmationRequest implements _InttegroValue {
  final String orderId;
  const RequestConfirmationRequest({required this.orderId});
  factory RequestConfirmationRequest.fromJson(Map<String, Object?> json) =>
      RequestConfirmationRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}
