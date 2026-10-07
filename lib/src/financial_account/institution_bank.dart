part of '../../financial_account.dart';

/// Bank identifiers and account-code metadata for a financial institution.
final class InstitutionBank implements InttegroValue {
  final String bankAccountType;
  final InstitutionBankBranch? branch;
  final String codeScheme;
  final String? sortCodePrefix;
  final String? swiftCode;
  const InstitutionBank({
    required this.bankAccountType,
    this.branch,
    required this.codeScheme,
    this.sortCodePrefix,
    this.swiftCode,
  });
  factory InstitutionBank.fromJson(Map<String, Object?> json) =>
      InstitutionBank(
        bankAccountType: json["bank_account_type"] as String,
        branch: json["branch"] == null
            ? null
            : InstitutionBankBranch.fromJson(
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
        "bank_account_type": encodeValue(bankAccountType),
        if (branch != null) "branch": encodeValue(branch),
        "code_scheme": encodeValue(codeScheme),
        if (sortCodePrefix != null)
          "sort_code_prefix": encodeValue(sortCodePrefix),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
      };
}
