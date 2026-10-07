part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class LookupOTPRequest implements _InttegroValue {
  final String transactionId;
  const LookupOTPRequest({required this.transactionId});
  factory LookupOTPRequest.fromJson(Map<String, Object?> json) =>
      LookupOTPRequest(transactionId: json["transaction_id"] as String);
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": _encodeValue(transactionId),
      };
}
