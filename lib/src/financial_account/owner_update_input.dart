part of '../../financial_account.dart';

/// Owner update fields accepted by the financial account API.
///
/// Carries [name] and [address].
final class OwnerUpdateInput implements InttegroValue {
  final String? name;
  final OwnerUpdateInputAddress? address;
  const OwnerUpdateInput({this.name, this.address});
  factory OwnerUpdateInput.fromJson(
    Map<String, Object?> json,
  ) =>
      OwnerUpdateInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null
            ? null
            : OwnerUpdateInputAddress.fromJson(
                (json["address"] as Map).cast<String, Object?>(),
              ),
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (address != null) "address": encodeValue(address),
      };
}
