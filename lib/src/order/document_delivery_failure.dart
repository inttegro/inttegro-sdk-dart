part of '../../order.dart';

/// A failed delivery channel for an order document.
final class DocumentDeliveryFailure implements InttegroValue {
  final inttegro_shared.DeliveryChannel? channel;
  const DocumentDeliveryFailure({this.channel});
  factory DocumentDeliveryFailure.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryFailure(
        channel: json["channel"] == null
            ? null
            : inttegro_shared.DeliveryChannel.fromJson(json["channel"]),
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": encodeValue(channel),
      };
}
