part of '../../financial_account.dart';

/// Whether pulls should be enabled when creating a bank financial account.
final class BankRequestPullConfiguration implements InttegroValue {
  final bool? enabled;
  const BankRequestPullConfiguration({this.enabled});
  factory BankRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      BankRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
