part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodVerification implements _InttegroValue {
  final DateTime? completedAt;
  final DateTime initiatedAt;
  final String? mechanism;
  final String requestId;
  final String type;
  const PaymentMethodVerification({
    this.completedAt,
    required this.initiatedAt,
    this.mechanism,
    required this.requestId,
    required this.type,
  });
  factory PaymentMethodVerification.fromJson(Map<String, Object?> json) =>
      PaymentMethodVerification(
        completedAt: json["completed_at"] == null
            ? null
            : _decodeDateTime(json["completed_at"]),
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        mechanism:
            json["mechanism"] == null ? null : json["mechanism"] as String,
        requestId: json["request_id"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (completedAt != null) "completed_at": _encodeValue(completedAt),
        "initiated_at": _encodeValue(initiatedAt),
        if (mechanism != null) "mechanism": _encodeValue(mechanism),
        "request_id": _encodeValue(requestId),
        "type": _encodeValue(type),
      };
}
