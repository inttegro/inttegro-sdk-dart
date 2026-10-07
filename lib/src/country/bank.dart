part of '../../country.dart';

/// A bank listed in a country's supported bank directory.
final class Bank implements InttegroValue {
  final String id;
  final String name;
  final String? swiftCode;
  final String? sortCodePrefix;
  final List<BankBranch> branches;
  const Bank({
    required this.id,
    required this.name,
    this.swiftCode,
    this.sortCodePrefix,
    required this.branches,
  });
  factory Bank.fromJson(Map<String, Object?> json) => Bank(
        id: json["id"] as String,
        name: json["name"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
        sortCodePrefix: json["sort_code_prefix"] == null
            ? null
            : json["sort_code_prefix"] as String,
        branches: (json["branches"] as List)
            .map(
              (item) =>
                  BankBranch.fromJson((item as Map).cast<String, Object?>()),
            )
            .toList(),
      );
  @override
  Map<String, Object?> toJson() => {
        "id": encodeValue(id),
        "name": encodeValue(name),
        if (swiftCode != null) "swift_code": encodeValue(swiftCode),
        if (sortCodePrefix != null)
          "sort_code_prefix": encodeValue(sortCodePrefix),
        "branches": encodeValue(branches),
      };
}
