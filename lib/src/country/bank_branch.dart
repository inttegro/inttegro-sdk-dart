part of '../../country.dart';

/// A branch and sort code listed for a supported bank.
final class BankBranch implements InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const BankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory BankBranch.fromJson(Map<String, Object?> json) => BankBranch(
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
