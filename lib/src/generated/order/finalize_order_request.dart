part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinalizeOrderRequest implements _InttegroValue {
  final String orderId;
  const FinalizeOrderRequest({required this.orderId});
  factory FinalizeOrderRequest.fromJson(Map<String, Object?> json) =>
      FinalizeOrderRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}
