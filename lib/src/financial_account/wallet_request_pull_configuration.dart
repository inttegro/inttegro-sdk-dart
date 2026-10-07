part of '../../financial_account.dart';

/// Whether pulls should be enabled when creating a wallet financial account.
final class WalletRequestPullConfiguration implements InttegroValue {
  final bool? enabled;
  const WalletRequestPullConfiguration({this.enabled});
  factory WalletRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      WalletRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
