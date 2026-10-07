part of '../../financial_account.dart';

/// Configuration and mandate for pulling funds from a financial account.
///
/// Exposes [enabledAt] and [mandate].
final class PullConfiguration implements InttegroValue {
  final DateTime enabledAt;
  final PullConfigurationMandate mandate;
  const PullConfiguration({
    required this.enabledAt,
    required this.mandate,
  });
  factory PullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      PullConfiguration(
        enabledAt: decodeDateTime(json["enabled_at"]),
        mandate: PullConfigurationMandate.fromJson(
          (json["mandate"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enabled_at": encodeValue(enabledAt),
        "mandate": encodeValue(mandate),
      };
}
