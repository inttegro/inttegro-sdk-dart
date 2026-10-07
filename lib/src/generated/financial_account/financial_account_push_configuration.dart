part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountPushConfiguration implements _InttegroValue {
  final DateTime enabledAt;
  const FinancialAccountPushConfiguration({required this.enabledAt});
  factory FinancialAccountPushConfiguration.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountPushConfiguration(
        enabledAt: _decodeDateTime(json["enabled_at"]),
      );
  @override
  Map<String, Object?> toJson() => {"enabled_at": _encodeValue(enabledAt)};
}
