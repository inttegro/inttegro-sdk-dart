part of '../../financial_account.dart';

/// Whether pulls should be enabled when creating a Dosh financial account.
final class DoshRequestPullConfiguration implements InttegroValue {
  final bool? enabled;
  const DoshRequestPullConfiguration({this.enabled});
  factory DoshRequestPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      DoshRequestPullConfiguration(
        enabled: json["enabled"] == null ? null : json["enabled"] as bool,
      );
  @override
  Map<String, Object?> toJson() => {
        if (enabled != null) "enabled": encodeValue(enabled),
      };
}
