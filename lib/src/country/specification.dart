part of '../../country.dart';

/// Commerce capabilities and financial directories available for a country.
///
/// The lists describe currencies, payment methods, payout schedules, account
/// types, and identity inputs supported by the API for [countryCode].
final class Specification implements InttegroValue {
  final String countryCode;
  final String countryName;
  final List<String> currencies;
  final List<String> paymentMethods;
  final List<String> payoutSchedules;
  final List<String> btAgingSpecs;
  final List<String> legalEntityTypes;
  final List<String> financialAccountTypes;
  final List<String> idDocumentTypes;
  final BankDirectory? banks;
  const Specification({
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
  factory Specification.fromJson(Map<String, Object?> json) => Specification(
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
            : BankDirectory.fromJson(
                (json["banks"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        "country_code": encodeValue(countryCode),
        "country_name": encodeValue(countryName),
        "currencies": encodeValue(currencies),
        "payment_methods": encodeValue(paymentMethods),
        "payout_schedules": encodeValue(payoutSchedules),
        "bt_aging_specs": encodeValue(btAgingSpecs),
        "legal_entity_types": encodeValue(legalEntityTypes),
        "financial_account_types": encodeValue(financialAccountTypes),
        "id_document_types": encodeValue(idDocumentTypes),
        if (banks != null) "banks": encodeValue(banks),
      };
}
