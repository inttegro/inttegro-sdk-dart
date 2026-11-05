part of '../../children_policy.dart';

/// Allowed state combinations for one child payment method.
final class PaymentMethodCapabilities implements InttegroValue {
  final List<bool> enabled;
  final List<bool> confirmsUse;
  const PaymentMethodCapabilities({
    required this.enabled,
    required this.confirmsUse,
  });
  factory PaymentMethodCapabilities.fromJson(Map<String, Object?> json) =>
      PaymentMethodCapabilities(
        enabled: (json['enabled'] as List).cast<bool>(),
        confirmsUse: (json['confirms_use'] as List).cast<bool>(),
      );
  @override
  Map<String, Object?> toJson() => {
        'enabled': enabled,
        'confirms_use': confirmsUse,
      };
}
