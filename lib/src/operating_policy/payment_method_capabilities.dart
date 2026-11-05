part of '../../operating_policy.dart';

/// Selected configuration for one payment method.
final class PaymentMethodCapabilities implements InttegroValue {
  final bool enabled;
  final bool confirmsUse;
  const PaymentMethodCapabilities({
    required this.enabled,
    required this.confirmsUse,
  });
  factory PaymentMethodCapabilities.fromJson(Map<String, Object?> json) =>
      PaymentMethodCapabilities(
        enabled: json['enabled'] as bool,
        confirmsUse: json['confirms_use'] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        'enabled': enabled,
        'confirms_use': confirmsUse,
      };
}
