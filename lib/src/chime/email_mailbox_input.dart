part of '../../chime.dart';

/// Email mailbox fields accepted by the Chime API.
///
/// Carries [name] and [address].
final class EmailMailboxInput implements InttegroValue {
  final String? name;
  final String? address;
  const EmailMailboxInput({this.name, this.address});
  factory EmailMailboxInput.fromJson(Map<String, Object?> json) =>
      EmailMailboxInput(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (address != null) "address": encodeValue(address),
      };
}
