part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountDoshRequestPullConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountDoshRequestPullConfiguration({this.enabled});
  factory FinancialAccountDoshRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountDoshRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
