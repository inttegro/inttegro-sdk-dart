part of '../../order.dart';

/// Payout destination and foreign-exchange settings supplied for an order.
final class PayoutSettingsRequest implements InttegroValue {
  final PayoutSettingsRequestDestination? destination;
  final bool? enableFx;
  const PayoutSettingsRequest({this.destination, this.enableFx});
  factory PayoutSettingsRequest.fromJson(Map<String, Object?> json) =>
      PayoutSettingsRequest(
        destination: json["destination"] == null
            ? null
            : PayoutSettingsRequestDestination.fromJson(
                (json["destination"] as Map).cast<String, Object?>(),
              ),
        enableFx: json["enable_fx"] == null ? null : json["enable_fx"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (destination != null) "destination": encodeValue(destination),
        if (enableFx != null) "enable_fx": encodeValue(enableFx),
      };
}
