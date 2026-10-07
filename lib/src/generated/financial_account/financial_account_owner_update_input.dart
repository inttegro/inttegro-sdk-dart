part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerUpdateInput implements _InttegroValue {
  final String? name;
  final FinancialAccountOwnerUpdateInputAddress? address;
  const FinancialAccountOwnerUpdateInput({this.name, this.address});
  factory FinancialAccountOwnerUpdateInput.fromJson(
    Map<String, Object?> json,
  ) =>
      FinancialAccountOwnerUpdateInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : FinancialAccountOwnerUpdateInputAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": _encodeValue(name),
        if (address != null) "address": _encodeValue(address),
      };
}
