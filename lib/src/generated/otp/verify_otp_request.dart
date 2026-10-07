part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class VerifyOTPRequest implements _InttegroValue {
  final String transactionId;
  final String recipient;
  final String token;
  const VerifyOTPRequest({
    required this.transactionId,
    required this.recipient,
    required this.token,
  });
  factory VerifyOTPRequest.fromJson(Map<String, Object?> json) =>
      VerifyOTPRequest(
        transactionId: json["transaction_id"] as String,
        recipient: json["recipient"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": _encodeValue(transactionId),
        "recipient": _encodeValue(recipient),
        "token": _encodeValue(token),
      };
}
