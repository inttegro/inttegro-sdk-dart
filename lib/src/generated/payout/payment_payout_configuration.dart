part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentPayoutConfiguration implements _InttegroValue {
  final bool enableFx;
  final PaymentPayoutConfigurationDestination destination;
  const PaymentPayoutConfiguration({
    required this.enableFx,
    required this.destination,
  });
  factory PaymentPayoutConfiguration.fromJson(Map<String, Object?> json) =>
      PaymentPayoutConfiguration(
        enableFx: json["enable_fx"] as bool,
        destination: PaymentPayoutConfigurationDestination.fromJson(
          (json["destination"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enable_fx": _encodeValue(enableFx),
        "destination": _encodeValue(destination),
      };
}
