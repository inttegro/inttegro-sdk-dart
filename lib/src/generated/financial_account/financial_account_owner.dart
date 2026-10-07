part of '../../../inttegro.dart';

/// Typed Inttegro domain value.
final class FinancialAccountOwner implements _InttegroValue {
  final FinancialAccountAddress address;
  final String name;
  const FinancialAccountOwner({required this.address, required this.name});
  factory FinancialAccountOwner.fromJson(Map<String, Object?> json) =>
      FinancialAccountOwner(
        address: FinancialAccountAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": _encodeValue(address),
        "name": _encodeValue(name),
      };
}
