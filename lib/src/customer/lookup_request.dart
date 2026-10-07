part of '../../customer.dart';

/// Identifies the customer to retrieve.
///
/// Carries [customerId].
final class LookupRequest implements InttegroValue {
  final String customerId;
  const LookupRequest({required this.customerId});
  factory LookupRequest.fromJson(Map<String, Object?> json) =>
      LookupRequest(customerId: json["customer_id"] as String);
  @override
  Map<String, Object?> toJson() => {"customer_id": encodeValue(customerId)};
}
