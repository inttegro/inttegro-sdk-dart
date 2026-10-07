part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountWalletRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountWalletRequestPullConfiguration({this.enabled});
  factory FinancialAccountWalletRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountWalletRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
