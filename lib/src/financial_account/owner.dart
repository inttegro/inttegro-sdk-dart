part of '../../financial_account.dart';

/// The owner details associated with a financial account.
///
/// Exposes [address] and [name].
final class Owner implements InttegroValue {
  final Address address;
  final String name;
  const Owner({required this.address, required this.name});
  factory Owner.fromJson(Map<String, Object?> json) => Owner(
        address: Address.fromJson(
          (json["address"] as Map).cast<String, Object?>(),
        ),
        name: json["name"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        "address": encodeValue(address),
        "name": encodeValue(name),
      };
}
