part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CountrySpecification implements _InttegroValue {
  final String countryCode;
  final String countryName;
  final List<String> currencies;
  final List<String> paymentMethods;
  final List<String> payoutSchedules;
  final List<String> btAgingSpecs;
  final List<String> legalEntityTypes;
  final List<String> financialAccountTypes;
  final List<String> idDocumentTypes;
  final CountryBankDirectory? banks;
  const CountrySpecification({
    required this.countryCode,
    required this.countryName,
    required this.currencies,
    required this.paymentMethods,
    required this.payoutSchedules,
    required this.btAgingSpecs,
    required this.legalEntityTypes,
    required this.financialAccountTypes,
    required this.idDocumentTypes,
    this.banks,
  });
  factory CountrySpecification.fromJson(Map<String, Object?> json) =>
      CountrySpecification(
        countryCode: json["country_code"] as String,
        countryName: json["country_name"] as String,
        currencies:
            (json["currencies"] as List).map((item) => item as String).toList(),
        paymentMethods: (json["payment_methods"] as List)
            .map((item) => item as String)
            .toList(),
        payoutSchedules: (json["payout_schedules"] as List)
            .map((item) => item as String)
            .toList(),
        btAgingSpecs: (json["bt_aging_specs"] as List)
            .map((item) => item as String)
            .toList(),
        legalEntityTypes: (json["legal_entity_types"] as List)
            .map((item) => item as String)
            .toList(),
        financialAccountTypes: (json["financial_account_types"] as List)
            .map((item) => item as String)
            .toList(),
        idDocumentTypes: (json["id_document_types"] as List)
            .map((item) => item as String)
            .toList(),
        banks: json["banks"] == null
            ? null
            : CountryBankDirectory.fromJson(
                (json["banks"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "country_code": _encodeValue(countryCode),
        "country_name": _encodeValue(countryName),
        "currencies": _encodeValue(currencies),
        "payment_methods": _encodeValue(paymentMethods),
        "payout_schedules": _encodeValue(payoutSchedules),
        "bt_aging_specs": _encodeValue(btAgingSpecs),
        "legal_entity_types": _encodeValue(legalEntityTypes),
        "financial_account_types": _encodeValue(financialAccountTypes),
        "id_document_types": _encodeValue(idDocumentTypes),
        if (banks != null) "banks": _encodeValue(banks),
      };
}
