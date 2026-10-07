part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class OrderPayoutSettingsRequest implements _InttegroValue {
  final OrderPayoutSettingsRequestDestination? destination;
  final bool? enableFx;
  const OrderPayoutSettingsRequest({this.destination, this.enableFx});
  factory OrderPayoutSettingsRequest.fromJson(Map<String, Object?> json) =>
      OrderPayoutSettingsRequest(
        destination: json["destination"] == null
            ? null
            : OrderPayoutSettingsRequestDestination.fromJson(
                (json["destination"] as Map).cast<String, Object?>(),
              ),
        enableFx: json["enable_fx"] == null ? null : json["enable_fx"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (destination != null) "destination": _encodeValue(destination),
        if (enableFx != null) "enable_fx": _encodeValue(enableFx),
      };
}
