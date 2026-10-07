part of '../../otp.dart';

/// A one-time-password transaction and its current delivery or verification
/// state.
final class Transaction implements InttegroValue {
  final String? cancelReason;
  final DateTime? canceledAt;
  final DateTime expiresAt;
  final String fullMessage;
  final String id;
  final DateTime initiatedAt;
  final Status status;
  final Transmission? transmission;
  const Transaction({
    this.cancelReason,
    this.canceledAt,
    required this.expiresAt,
    required this.fullMessage,
    required this.id,
    required this.initiatedAt,
    required this.status,
    this.transmission,
  });
  factory Transaction.fromJson(Map<String, Object?> json) => Transaction(
        cancelReason: json["cancel_reason"] == null
            ? null
            : json["cancel_reason"] as String,
        canceledAt: json["canceled_at"] == null
            ? null
            : decodeDateTime(json["canceled_at"]),
        expiresAt: decodeDateTime(json["expires_at"]),
        fullMessage: json["full_message"] as String,
        id: json["id"] as String,
        initiatedAt: decodeDateTime(json["initiated_at"]),
        status: Status.fromJson(json["status"]),
        transmission: json["transmission"] == null
            ? null
            : Transmission.fromJson(
                (json["transmission"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (cancelReason != null) "cancel_reason": encodeValue(cancelReason),
        if (canceledAt != null) "canceled_at": encodeValue(canceledAt),
        "expires_at": encodeValue(expiresAt),
        "full_message": encodeValue(fullMessage),
        "id": encodeValue(id),
        "initiated_at": encodeValue(initiatedAt),
        "status": encodeValue(status),
        if (transmission != null) "transmission": encodeValue(transmission),
      };
}
