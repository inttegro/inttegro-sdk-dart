part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CountryBankBranch implements _InttegroValue {
  final String id;
  final String name;
  final String sortCode;
  const CountryBankBranch({
    required this.id,
    required this.name,
    required this.sortCode,
  });
  factory CountryBankBranch.fromJson(Map<String, Object?> json) =>
      CountryBankBranch(
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
