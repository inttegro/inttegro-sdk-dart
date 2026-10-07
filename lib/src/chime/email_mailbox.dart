part of '../../chime.dart';

/// The name and address of an email mailbox.
final class EmailMailbox implements InttegroValue {
  final String? name;
  final String? address;
  const EmailMailbox({this.name, this.address});
  factory EmailMailbox.fromJson(Map<String, Object?> json) => EmailMailbox(
        name: json["name"] == null ? null : json["name"] as String,
        address: json["address"] == null ? null : json["address"] as String,
      );
  @override
  Map<String, Object?> toJson() => {
        if (name != null) "name": encodeValue(name),
        if (address != null) "address": encodeValue(address),
      };
}
