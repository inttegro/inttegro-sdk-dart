part of '../../country.dart';

/// A country's bank directory and account-code scheme.
///
/// Exposes [bankAccountType], [codeScheme], and [items].
final class BankDirectory implements InttegroValue {
  final String bankAccountType;
  final String codeScheme;
  final List<Bank> items;
  const BankDirectory({
    required this.bankAccountType,
    required this.codeScheme,
    required this.items,
  });
  factory BankDirectory.fromJson(Map<String, Object?> json) => BankDirectory(
        bankAccountType: json["bank_account_type"] as String,
        codeScheme: json["code_scheme"] as String,
        items: (json["items"] as List)
            .map(
              (item) => Bank.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "bank_account_type": encodeValue(bankAccountType),
        "code_scheme": encodeValue(codeScheme),
        "items": encodeValue(items),
      };
}
