part of '../../otp.dart';

/// Parameters for verifying a one-time-password token.
///
/// Carries [transactionId], [recipient], and [token].
final class VerifyRequest implements InttegroValue {
  final String transactionId;
  final String recipient;
  final String token;
  const VerifyRequest({
    required this.transactionId,
    required this.recipient,
    required this.token,
  });
  factory VerifyRequest.fromJson(Map<String, Object?> json) => VerifyRequest(
        transactionId: json["transaction_id"] as String,
        recipient: json["recipient"] as String,
        token: json["token"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "transaction_id": encodeValue(transactionId),
        "recipient": encodeValue(recipient),
        "token": encodeValue(token),
      };
}
