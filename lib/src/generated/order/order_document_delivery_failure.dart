part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class OrderDocumentDeliveryFailure implements _InttegroValue {
  final DeliveryChannel? channel;
  final String? error;
  const OrderDocumentDeliveryFailure({this.channel, this.error});
  factory OrderDocumentDeliveryFailure.fromJson(Map<String, Object?> json) =>
      OrderDocumentDeliveryFailure(
        channel: json["channel"] == null
            ? null
            : DeliveryChannel.fromJson(json["channel"]),
        error: json["error"] == null ? null : json["error"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (channel != null) "channel": _encodeValue(channel),
        if (error != null) "error": _encodeValue(error),
      };
}
