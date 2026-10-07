part of '../../order.dart';

/// Identifies the order to finalize.
///
/// Carries [orderId].
final class FinalizeRequest implements InttegroValue {
  final String orderId;
  const FinalizeRequest({required this.orderId});
  factory FinalizeRequest.fromJson(Map<String, Object?> json) =>
      FinalizeRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": encodeValue(orderId)};
}
