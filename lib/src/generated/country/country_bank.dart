part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class CountryBank implements _InttegroValue {
  final String id;
  final String name;
  final String? swiftCode;
  final String? sortCodePrefix;
  final List<CountryBankBranch> branches;
  const CountryBank({
    required this.id,
    required this.name,
    this.swiftCode,
    this.sortCodePrefix,
    required this.branches,
  });
  factory CountryBank.fromJson(Map<String, Object?> json) => CountryBank(
        id: json["id"] as String,
        name: json["name"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        sortCodePrefix: json["sort_code_prefix"] == null
            ? null
            : json["sort_code_prefix"] as String,
        branches: (json["branches"] as List)
            .map(
              (item) => CountryBankBranch.fromJson(
                  (item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": _encodeValue(id),
        "name": _encodeValue(name),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
        if (sortCodePrefix != null)
          "sort_code_prefix": _encodeValue(sortCodePrefix),
        "branches": _encodeValue(branches),
      };
}
