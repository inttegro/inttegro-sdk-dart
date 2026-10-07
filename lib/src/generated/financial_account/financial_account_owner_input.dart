part of '../../../inttegro.dart';

/// Typed Inttegro request parameters.
final class FinancialAccountOwnerInput implements _InttegroValue {
  final String name;
  final FinancialAccountOwnerInputAddress address;
  const FinancialAccountOwnerInput({required this.name, required this.address});
  factory FinancialAccountOwnerInput.fromJson(Map<String, Object?> json) =>
      FinancialAccountOwnerInput(
        name: json["name"] as String,
        address: FinancialAccountOwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": _encodeValue(name),
        "address": _encodeValue(address),
      };
}
