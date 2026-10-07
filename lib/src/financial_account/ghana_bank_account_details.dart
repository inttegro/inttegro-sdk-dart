part of '../../financial_account.dart';

/// Ghana bank-account details supplied when creating a financial account.
final class GhanaBankAccountDetails implements InttegroValue {
  final String? bankName;
  final String? branch;
  final String? sortCode;
  final String? swiftCode;
  final OwnerInput? holder;
  final String number;
  const GhanaBankAccountDetails({
    this.bankName,
    this.branch,
    this.sortCode,
    this.swiftCode,
    this.holder,
    required this.number,
  });
  factory GhanaBankAccountDetails.fromJson(
    Map<String, Object?> json,
  ) =>
      GhanaBankAccountDetails(
        bankName:
            json["bank_name"] == null ? null : json["bank_name"] as String,
        branch: json["branch"] == null ? null : json["branch"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        holder: json["holder"] == null
            ? null
            : OwnerInput.fromJson(
                (json["holder"] as Map).cast<String, Object?>(),
              ),
        number: json["number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bankName != null) "bank_name": encodeValue(bankName),
        if (branch != null) "branch": encodeValue(branch),
        if (sortCode != null) "sort_code": encodeValue(sortCode),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
        if (holder != null) "holder": encodeValue(holder),
        "number": encodeValue(number),
      };
}
