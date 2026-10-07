part of '../../bank_account.dart';

/// Ghana bank-account details and the account holder returned by the API.
final class GhanaBankAccount implements InttegroValue {
  final String? branch;
  final inttegro_financial_account.Owner holder;
  final String? name;
  final String number;
  final String? sortCode;
  final String? swiftCode;
  const GhanaBankAccount({
    this.branch,
    required this.holder,
    this.name,
    required this.number,
    this.sortCode,
    this.swiftCode,
  });
  factory GhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      GhanaBankAccount(
        branch: json["branch"] == null ? null : json["branch"] as String,
        holder: inttegro_financial_account.Owner.fromJson(
          (json["holder"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] == null ? null : json["name"] as String,
        number: json["number"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (branch != null) "branch": encodeValue(branch),
        "holder": encodeValue(holder),
        if (name != null) "name": encodeValue(name),
        "number": encodeValue(number),
        if (sortCode != null) "sort_code": encodeValue(sortCode),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
      };
}
