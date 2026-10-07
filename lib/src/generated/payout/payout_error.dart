part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PayoutError implements _InttegroValue {
  final String cause;
  final String message;
  final DateTime occurredAt;
  final String type;
  const PayoutError({
    required this.cause,
    required this.message,
    required this.occurredAt,
    required this.type,
  });
  factory PayoutError.fromJson(Map<String, Object?> json) => PayoutError(
        cause: json["cause"] as String,
        message: json["message"] as String,
        occurredAt: _decodeDateTime(json["occurred_at"]),
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "cause": _encodeValue(cause),
        "message": _encodeValue(message),
        "occurred_at": _encodeValue(occurredAt),
        "type": _encodeValue(type),
      };
}
