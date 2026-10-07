part of '../../payout.dart';

/// Payout routing configuration attached to a payment.
///
/// Exposes [enableFx] and [destination].
final class PaymentConfiguration implements InttegroValue {
  final bool enableFx;
  final PaymentConfigurationDestination destination;
  const PaymentConfiguration({
    required this.enableFx,
    required this.destination,
  });
  factory PaymentConfiguration.fromJson(Map<String, Object?> json) =>
      PaymentConfiguration(
        enableFx: json["enable_fx"] as bool,
        destination: PaymentConfigurationDestination.fromJson(
          (json["destination"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enable_fx": encodeValue(enableFx),
        "destination": encodeValue(destination),
      };
}
