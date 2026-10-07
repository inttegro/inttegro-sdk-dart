part of '../../order.dart';

/// Identifies the order to retrieve.
///
/// Carries [orderId].
final class LookupRequest implements InttegroValue {
  final String orderId;
  const LookupRequest({required this.orderId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(orderId: json["order_id"] as String);
  @override
  Map<String, Object?> toJson() => {"order_id": encodeValue(orderId)};
}
