part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialInstitutionBank implements _InttegroValue {
  final String bankAccountType;
  final FinancialInstitutionBankBranch? branch;
  final String codeScheme;
  final String? sortCodePrefix;
  final String? swiftCode;
  const FinancialInstitutionBank({
    required this.bankAccountType,
    this.branch,
    required this.codeScheme,
    this.sortCodePrefix,
    this.swiftCode,
  });
  factory FinancialInstitutionBank.fromJson(Map<String, Object?> json) =>
      FinancialInstitutionBank(
        bankAccountType: json["bank_account_type"] as String,
        branch: json["branch"] == null
            ? null
            : FinancialInstitutionBankBranch.fromJson(
                (json["branch"] as Map).cast<String, Object?>(),
              ),
        codeScheme: json["code_scheme"] as String,
        sortCodePrefix: json["sort_code_prefix"] == null
            ? null
            : json["sort_code_prefix"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "bank_account_type": _encodeValue(bankAccountType),
        if (branch != null) "branch": _encodeValue(branch),
        "code_scheme": _encodeValue(codeScheme),
        if (sortCodePrefix != null)
          "sort_code_prefix": _encodeValue(sortCodePrefix),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}
