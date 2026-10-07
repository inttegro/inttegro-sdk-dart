part of '../../financial_account.dart';

/// Whether pushes should be enabled when creating a bank financial account.
final class BankRequestPushConfiguration implements InttegroValue {
  final bool? enabled;
  const BankRequestPushConfiguration({this.enabled});
  factory BankRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      BankRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
