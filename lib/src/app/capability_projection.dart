part of '../../app.dart';

/// Known capability states currently exposed on an application resource.
final class CapabilityProjection implements InttegroValue {
  final Capability? payments;
  final Capability? payouts;
  const CapabilityProjection({this.payments, this.payouts});

  factory CapabilityProjection.fromJson(Map<String, Object?> json) =>
      CapabilityProjection(
        payments: json['payments'] == null
            ? null
            : Capability.fromJson(
                (json['payments'] as Map).cast<String, Object?>()),
        payouts: json['payouts'] == null
            ? null
            : Capability.fromJson(
                (json['payouts'] as Map).cast<String, Object?>()),
      );

  @override
  Map<String, Object?> toJson() => {
        if (payments != null) 'payments': encodeValue(payments),
        if (payouts != null) 'payouts': encodeValue(payouts),
      };
}
