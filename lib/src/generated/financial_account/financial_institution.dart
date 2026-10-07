part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialInstitution implements _InttegroValue {
  final FinancialInstitutionBank? bank;
  final String country;
  final String id;
  final FinancialInstitutionMobileMoneyProvider? mobileMoneyProvider;
  final String name;
  final String type;
  const FinancialInstitution({
    this.bank,
    required this.country,
    required this.id,
    this.mobileMoneyProvider,
    required this.name,
    required this.type,
  });
  factory FinancialInstitution.fromJson(Map<String, Object?> json) =>
      FinancialInstitution(
        bank: json["bank"] == null
            ? null
            : FinancialInstitutionBank.fromJson(
                (json["bank"] as Map).cast<String, Object?>(),
              ),
        country: json["country"] as String,
        id: json["id"] as String,
        mobileMoneyProvider: json["mobile_money_provider"] == null
            ? null
            : FinancialInstitutionMobileMoneyProvider.fromJson(
                (json["mobile_money_provider"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bank != null) "bank": _encodeValue(bank),
        "country": _encodeValue(country),
        "id": _encodeValue(id),
        if (mobileMoneyProvider != null)
          "mobile_money_provider": _encodeValue(mobileMoneyProvider),
        "name": _encodeValue(name),
        "type": _encodeValue(type),
      };
}
