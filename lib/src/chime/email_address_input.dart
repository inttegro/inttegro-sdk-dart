part of '../../chime.dart';

/// Email address fields accepted by the Chime API.
///
/// Carries [address].
final class EmailAddressInput implements InttegroValue {
  final String address;
  const EmailAddressInput({required this.address});
  factory EmailAddressInput.fromJson(
    Map<String, Object?> json,
  ) =>
      EmailAddressInput(
        address: json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {"address": encodeValue(address)};
}
