part of '../../payment_method.dart';

/// Ghana bank-account details attached to a payment method.
final class BankAccountGhanaBankAccount implements InttegroValue {
  final String? branch;
  final String? name;
  final String accountNumber;
  final String? sortCode;
  final String? swiftCode;
  const BankAccountGhanaBankAccount({
    this.branch,
    this.name,
    required this.accountNumber,
    this.sortCode,
    this.swiftCode,
  });
  factory BankAccountGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      BankAccountGhanaBankAccount(
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
        if (branch != null) "branch": encodeValue(branch),
        if (name != null) "name": encodeValue(name),
        "account_number": encodeValue(accountNumber),
        if (sortCode != null) "sort_code": encodeValue(sortCode),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
      };
}
