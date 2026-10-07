part of '../../financial_account.dart';

/// Configuration for pushing funds to a financial account.
///
/// Exposes [enabledAt].
final class PushConfiguration implements InttegroValue {
  final DateTime enabledAt;
  const PushConfiguration({required this.enabledAt});
  factory PushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      PushConfiguration(
        enabledAt: decodeDateTime(json["enabled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {"enabled_at": encodeValue(enabledAt)};
}
