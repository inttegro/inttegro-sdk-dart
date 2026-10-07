part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupCustomerRequest implements _InttegroValue {
  final String customerId;
  const LookupCustomerRequest({required this.customerId});
  factory LookupCustomerRequest.fromJson(Map<String, Object?> json) =>
      LookupCustomerRequest(customerId: json["customer_id"] as String);
  @override
  Map<String, Object?> toJson() => {"customer_id": _encodeValue(customerId)};
}
