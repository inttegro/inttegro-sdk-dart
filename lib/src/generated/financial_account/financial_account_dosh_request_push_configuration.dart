part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountDoshRequestPushConfiguration
    implements _InttegroValue {
  final bool? enabled;
  const FinancialAccountDoshRequestPushConfiguration({this.enabled});
  factory FinancialAccountDoshRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountDoshRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": _encodeValue(enabled),
      };
}
