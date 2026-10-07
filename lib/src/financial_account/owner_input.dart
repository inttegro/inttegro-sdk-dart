part of '../../financial_account.dart';

/// Owner fields accepted by the financial account API.
///
/// Carries [name] and [address].
final class OwnerInput implements InttegroValue {
  final String name;
  final OwnerInputAddress address;
  const OwnerInput({required this.name, required this.address});
  factory OwnerInput.fromJson(Map<String, Object?> json) => OwnerInput(
        name: json["name"] as String,
        address: OwnerInputAddress.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
      );
  @override
  Map<String, Object?> toJson() => {
        "name": encodeValue(name),
        "address": encodeValue(address),
      };
}
