part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountPullConfiguration implements _InttegroValue {
  final DateTime enabledAt;
  final FinancialAccountPullConfigurationMandate mandate;
  const FinancialAccountPullConfiguration({
    required this.enabledAt,
    required this.mandate,
  });
  factory FinancialAccountPullConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPullConfiguration(
        enabledAt: _decodeDateTime(json["enabled_at"]),
        mandate: FinancialAccountPullConfigurationMandate.fromJson(
          (json["mandate"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "enabled_at": _encodeValue(enabledAt),
        "mandate": _encodeValue(mandate),
      };
}
