part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryAttempt implements _InttegroValue {
  final DeliveryChannel? channel;
  final String? chimeId;
  const OrderDocumentDeliveryAttempt({this.channel, this.chimeId});
  factory OrderDocumentDeliveryAttempt.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryAttempt(
        channel: json["channel"] == null
            ? null
            : DeliveryChannel.fromJson(json["channel"]),
        chimeId: json["chime_id"] == null ? null : json["chime_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": _encodeValue(channel),
        if (chimeId != null) "chime_id": _encodeValue(chimeId),
      };
}
