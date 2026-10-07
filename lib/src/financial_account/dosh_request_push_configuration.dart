part of '../../financial_account.dart';

/// Whether pushes should be enabled when creating a Dosh financial account.
final class DoshRequestPushConfiguration implements InttegroValue {
  final bool? enabled;
  const DoshRequestPushConfiguration({this.enabled});
  factory DoshRequestPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      DoshRequestPushConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
