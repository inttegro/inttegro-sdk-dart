part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CountryBankDirectory implements _InttegroValue {
  final String bankAccountType;
  final String codeScheme;
  final List<CountryBank> items;
  const CountryBankDirectory({
    required this.bankAccountType,
    required this.codeScheme,
    required this.items,
  });
  factory CountryBankDirectory.fromJson(Map<String, Object?> json) =>
      CountryBankDirectory(
        bankAccountType: json["bank_account_type"] as String,
        codeScheme: json["code_scheme"] as String,
        items: (json["items"] as List)
            .map(
              (item) =>
                  CountryBank.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "bank_account_type": _encodeValue(bankAccountType),
        "code_scheme": _encodeValue(codeScheme),
        "items": _encodeValue(items),
      };
}
