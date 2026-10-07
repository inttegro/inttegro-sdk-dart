part of '../../otp.dart';

/// Delivery state for a one-time-password message.
///
/// Exposes [recipient], [senderId], [sentAt], and [sentVia], among other
/// contract fields.
final class Transmission implements InttegroValue {
  final String recipient;
  final String senderId;
  final DateTime? sentAt;
  final String? sentVia;
  final TransmissionStatus? status;
  const Transmission({
    required this.recipient,
    required this.senderId,
    this.sentAt,
    this.sentVia,
    this.status,
  });
  factory Transmission.fromJson(Map<String, Object?> json) => Transmission(
        recipient: json["recipient"] as String,
        senderId: json["sender_id"] as String,
        sentAt:
            json["sent_at"] == null ? null : decodeDateTime(json["sent_at"]),
        sentVia: json["sent_via"] == null ? null : json["sent_via"] as String,
        status: json["status"] == null
            ? null
            : TransmissionStatus.fromJson(json["status"]),
      );
  @override
  Map<String, Object?> toJson() => {
        "recipient": encodeValue(recipient),
        "sender_id": encodeValue(senderId),
        if (sentAt != null) "sent_at": encodeValue(sentAt),
        if (sentVia != null) "sent_via": encodeValue(sentVia),
        if (status != null) "status": encodeValue(status),
      };
}
