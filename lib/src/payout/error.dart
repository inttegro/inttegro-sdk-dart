part of '../../payout.dart';

/// Error details returned by payout operations.
///
/// Exposes [cause], [message], [occurredAt], and [type].
final class Error implements InttegroValue {
  final String cause;
  final String message;
  final DateTime occurredAt;
  final String type;
  const Error({
    required this.cause,
    required this.message,
    required this.occurredAt,
    required this.type,
  });
  factory Error.fromJson(Map<String, Object?> json) => Error(
        cause: json["cause"] as String,
        message: json["message"] as String,
        occurredAt: decodeDateTime(json["occurred_at"]),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "cause": encodeValue(cause),
        "message": encodeValue(message),
        "occurred_at": encodeValue(occurredAt),
        "type": encodeValue(type),
      };
}
