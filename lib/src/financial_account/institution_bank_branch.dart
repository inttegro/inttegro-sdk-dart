part of '../../financial_account.dart';

/// A branch listed for a financial-account institution.
final class InstitutionBankBranch implements InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const InstitutionBankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory InstitutionBankBranch.fromJson(Map<String, Object?> json) =>
      InstitutionBankBranch(
        id: json["id"] as String,
        name: json["name"] as String,
        sortCode: json["sort_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        "sort_code": encodeValue(sortCode),
      };
}
