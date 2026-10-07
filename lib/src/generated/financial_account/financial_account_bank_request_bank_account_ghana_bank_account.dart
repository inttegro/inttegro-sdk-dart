part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountBankRequestBankAccountGhanaBankAccount
    implements _InttegroValue {
  final String? bankName;
  final String? branch;
  final String? sortCode;
  final String? swiftCode;
  final FinancialAccountOwnerInput? holder;
  final String number;
  const FinancialAccountBankRequestBankAccountGhanaBankAccount({
    this.bankName,
    this.branch,
    this.sortCode,
    this.swiftCode,
    this.holder,
    required this.number,
  });
  factory FinancialAccountBankRequestBankAccountGhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountBankRequestBankAccountGhanaBankAccount(
        bankName:
            json["bank_name"] == null ? null : json["bank_name"] as String,
        branch: json["branch"] == null ? null : json["branch"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        holder: json["holder"] == null
            ? null
            : FinancialAccountOwnerInput.fromJson(
                (json["holder"] as Map).cast<String, Object?>(),
              ),
        number: json["number"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (bankName != null) "bank_name": _encodeValue(bankName),
        if (branch != null) "branch": _encodeValue(branch),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
        if (holder != null) "holder": _encodeValue(holder),
        "number": _encodeValue(number),
      };
}
