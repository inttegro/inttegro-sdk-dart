part of '../../financial_account.dart';

/// Whether pushes should be enabled when creating a wallet financial account.
final class WalletRequestPushConfiguration implements InttegroValue {
  final bool? enabled;
  const WalletRequestPushConfiguration({this.enabled});
  factory WalletRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      WalletRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
