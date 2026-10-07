part of '../../payment_method.dart';

/// Ghana bank-account details preserved in a payment-method snapshot.
final class SnapshotGhanaBankAccount implements InttegroValue {
  final String accountNumber;
  final String? branch;
  final String? name;
  final String? sortCode;
  final String? swiftCode;
  const SnapshotGhanaBankAccount({
    required this.accountNumber,
    this.branch,
    this.name,
    this.sortCode,
    this.swiftCode,
  });
  factory SnapshotGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      SnapshotGhanaBankAccount(
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
        "account_number": encodeValue(accountNumber),
        if (branch != null) "branch": encodeValue(branch),
        if (name != null) "name": encodeValue(name),
        if (sortCode != null) "sort_code": encodeValue(sortCode),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
      };
}
