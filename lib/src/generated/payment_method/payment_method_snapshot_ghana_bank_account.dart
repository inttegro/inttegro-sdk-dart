part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class PaymentMethodSnapshotGhanaBankAccount implements _InttegroValue {
  final String accountNumber;
  final String? branch;
  final String? name;
  final String? sortCode;
  final String? swiftCode;
  const PaymentMethodSnapshotGhanaBankAccount({
    required this.accountNumber,
    this.branch,
    this.name,
    this.sortCode,
    this.swiftCode,
  });
  factory PaymentMethodSnapshotGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      PaymentMethodSnapshotGhanaBankAccount(
        accountNumber: json["account_number"] as String,
        branch: json["branch"] == null ? null : json["branch"] as String,
        name: json["name"] == null ? null : json["name"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "account_number": _encodeValue(accountNumber),
        if (branch != null) "branch": _encodeValue(branch),
        if (name != null) "name": _encodeValue(name),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}
