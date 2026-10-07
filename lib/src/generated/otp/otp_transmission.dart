part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OTPTransmission implements _InttegroValue {
  final String recipient;
  final String senderId;
  final DateTime? sentAt;
  final String? sentVia;
  final OTPTransmissionStatus? status;
  const OTPTransmission({
    required this.recipient,
    required this.senderId,
    this.sentAt,
    this.sentVia,
    this.status,
  });
  factory OTPTransmission.fromJson(Map<String, Object?> json) =>
      OTPTransmission(
        recipient: json["recipient"] as String,
        senderId: json["sender_id"] as String,
        sentAt:
            json["sent_at"] == null ? null : _decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null ? null : json["sent_via"] as String,
        status: json["status"] == null
            ? null
            : OTPTransmissionStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "recipient": _encodeValue(recipient),
        "sender_id": _encodeValue(senderId),
        if (sentAt != null) "sent_at": _encodeValue(sentAt),
        if (sentVia != null) "sent_via": _encodeValue(sentVia),
        if (status != null) "status": _encodeValue(status),
      };
}
