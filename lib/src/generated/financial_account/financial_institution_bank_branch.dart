part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialInstitutionBankBranch implements _InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const FinancialInstitutionBankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory FinancialInstitutionBankBranch.fromJson(Map<String, Object?> json) =>
      FinancialInstitutionBankBranch(
        id: json["id"] as String,
        name: json["name"] as String,
        sortCode: json["sort_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        "sort_code": _encodeValue(sortCode),
      };
}
