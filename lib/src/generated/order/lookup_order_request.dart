part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupOrderRequest implements _InttegroValue {
  final String orderId;
  const LookupOrderRequest({required this.orderId});
  factory LookupOrderRequest.fromJson(Map<String, Object?> json) =>
      LookupOrderRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": _encodeValue(orderId)};
}
