part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountWalletRequestPushConfiguration({this.enabled});
  factory FinancialAccountWalletRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
