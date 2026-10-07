part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodBankAccountGhanaBankAccount implements _InttegroValue {
  final String? branch;
  final String? name;
  final String accountNumber;
  final String? sortCode;
  final String? swiftCode;
  const PaymentMethodBankAccountGhanaBankAccount({
    this.branch,
    this.name,
    required this.accountNumber,
    this.sortCode,
    this.swiftCode,
  });
  factory PaymentMethodBankAccountGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodBankAccountGhanaBankAccount(
        branch: json["branch"] == null ? null : json["branch"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        accountNumber: json["account_number"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (branch != null) "branch": _encodeValue(branch),
        if (name != null) "name": _encodeValue(name),
        "account_number": _encodeValue(accountNumber),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}
