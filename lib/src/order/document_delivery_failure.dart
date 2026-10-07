part of '../../order.dart';

/// A failed delivery channel and its error for an order document.
final class DocumentDeliveryFailure implements InttegroValue {
  final inttegro_shared.DeliveryChannel? channel;
  final String? error;
  const DocumentDeliveryFailure({this.channel, this.error});
  factory DocumentDeliveryFailure.fromJson(Map<String, Object?> json) =>
      DocumentDeliveryFailure(
        channel: json["channel"] == null
            ? null
            : inttegro_shared.DeliveryChannel.fromJson(json["channel"]),
        error: json["error"] == null ? null : json["error"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": encodeValue(channel),
        if (error != null) "error": encodeValue(error),
      };
}
