part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialInstitutionMobileMoneyProvider implements _InttegroValue {
  final String provider;
  const FinancialInstitutionMobileMoneyProvider({required this.provider});
  factory FinancialInstitutionMobileMoneyProvider.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialInstitutionMobileMoneyProvider(
        provider: json["provider"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"provider": _encodeValue(provider)};
}
