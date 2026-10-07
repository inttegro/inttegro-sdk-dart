part of '../../order.dart';

/// A Chime delivery attempt for an order document.
final class DocumentDeliveryAttempt implements InttegroValue {
  final inttegro_shared.DeliveryChannel? channel;
  final String? chimeId;
  const DocumentDeliveryAttempt({this.channel, this.chimeId});
  factory DocumentDeliveryAttempt.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryAttempt(
        channel: json["channel"] == null
            ? null
            : inttegro_shared.DeliveryChannel.fromJson(json["channel"]),
        chimeId: json["chime_id"] == null ? null : json["chime_id"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": encodeValue(channel),
        if (chimeId != null) "chime_id": encodeValue(chimeId),
      };
}
