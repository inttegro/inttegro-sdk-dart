part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountBankRequestPullConfiguration({this.enabled});
  factory FinancialAccountBankRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
