part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountBankRequestPushConfiguration({this.enabled});
  factory FinancialAccountBankRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
