part of '../../app.dart';

/// Payment and payout capabilities available to the authenticated app.
final class Capabilities implements InttegroValue {
  final Capability payments;
  final Capability payouts;
  const Capabilities({required this.payments, required this.payouts});
  factory Capabilities.fromJson(Map<String, Object?> json) => Capabilities(
        payments: Capability.fromJson(
            (json['payments'] as Map).cast<String, Object?>()),
        payouts: Capability.fromJson(
            (json['payouts'] as Map).cast<String, Object?>()),
      );
  @override
  Map<String, Object?> toJson() =>
      {'payments': encodeValue(payments), 'payouts': encodeValue(payouts)};
}
