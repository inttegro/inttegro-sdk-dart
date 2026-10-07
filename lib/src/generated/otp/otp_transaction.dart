part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OTPTransaction implements _InttegroValue {
  final String? cancelReason;
  final DateTime? canceledAt;
  final DateTime expiresAt;
  final String fullMessage;
  final String id;
  final DateTime initiatedAt;
  final OTPStatus status;
  final OTPTransmission? transmission;
  const OTPTransaction({
    this.cancelReason,
    this.canceledAt,
    required this.expiresAt,
    required this.fullMessage,
    required this.id,
    required this.initiatedAt,
    required this.status,
    this.transmission,
  });
  factory OTPTransaction.fromJson(Map<String, Object?> json) => OTPTransaction(
        cancelReason: json["cancel_reason"] == null
            ? null
            : json["cancel_reason"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : _decodeDateTime(json["canceled_at"]),
        expiresAt: _decodeDateTime(json["expires_at"]),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        initiatedAt: _decodeDateTime(json["initiated_at"]),
        status: OTPStatus.fromJson(json["status"]),
        transmission: json["transmission"] == null
            ? null
            : OTPTransmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (cancelReason != null) "cancel_reason": _encodeValue(cancelReason),
        if (canceledAt != null) "canceled_at": _encodeValue(canceledAt),
        "expires_at": _encodeValue(expiresAt),
        "full_message": _encodeValue(fullMessage),
        "id": _encodeValue(id),
        "initiated_at": _encodeValue(initiatedAt),
        "status": _encodeValue(status),
        if (transmission != null) "transmission": _encodeValue(transmission),
      };
}
