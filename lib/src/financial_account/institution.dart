part of '../../financial_account.dart';

/// The financial institution associated with a financial account.
///
/// Exposes [bank], [country], [id], and [mobileMoneyProvider], among other
/// contract fields.
final class Institution implements InttegroValue {
  final InstitutionBank? bank;
  final String country;
  final String id;
  final InstitutionMobileMoneyProvider? mobileMoneyProvider;
  final String name;
  final String type;
  const Institution({
    this.bank,
    required this.country,
    required this.id,
    this.mobileMoneyProvider,
    required this.name,
    required this.type,
  });
  factory Institution.fromJson(Map<String, Object?> json) => Institution(
        bank: json["bank"] == null
            ? null
            : InstitutionBank.fromJson(
                (json["bank"] as Map).cast<String, Object?>(),
              ),
        country: json["country"] as String,
        id: json["id"] as String,
        mobileMoneyProvider: json["mobile_money_provider"] == null
            ? null
            : InstitutionMobileMoneyProvider.fromJson(
                (json["mobile_money_provider"] as Map).cast<String, Object?>(),
              ),
        name: json["name"] as String,
        type: json["type"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bank != null) "bank": encodeValue(bank),
        "country": encodeValue(country),
        "id": encodeValue(id),
        if (mobileMoneyProvider != null)
          "mobile_money_provider": encodeValue(mobileMoneyProvider),
        "name": encodeValue(name),
        "type": encodeValue(type),
      };
}
