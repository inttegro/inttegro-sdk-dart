part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class GhanaBankAccount implements _InttegroValue {
  final String? branch;
  final FinancialAccountOwner holder;
  final String? name;
  final String number;
  final String? sortCode;
  final String? swiftCode;
  const GhanaBankAccount({
    this.branch,
    required this.holder,
    this.name,
    required this.number,
    this.sortCode,
    this.swiftCode,
  });
  factory GhanaBankAccount.fromJson(
    Map<String, Object?> json,
  ) =>
      GhanaBankAccount(
        branch: json["branch"] == null ? null : json["branch"] as String,
        holder: FinancialAccountOwner.fromJson(
          (json["holder"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] == null ? null : json["name"] as String,
        number: json["number"] as String,
        sortCode:
            json["sort_code"] == null ? null : json["sort_code"] as String,
        swiftCode:
            json["swift_code"] == null ? null : json["swift_code"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (branch != null) "branch": _encodeValue(branch),
        "holder": _encodeValue(holder),
        if (name != null) "name": _encodeValue(name),
        "number": _encodeValue(number),
        if (sortCode != null) "sort_code": _encodeValue(sortCode),
        if (swiftCode != null) "swift_code": _encodeValue(swiftCode),
      };
}
